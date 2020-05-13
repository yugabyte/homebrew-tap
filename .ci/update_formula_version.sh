#!/usr/bin/env bash

set -o errexit -o pipefail

export_modified_files() {
  echo "::set-output name=modified_files::${modified_files}"
}

trap export_modified_files EXIT


info() {
  echo -e "\033[34m[INFO]\033[0m $*"
}

# version_eq compares major.minor of the given two versions. It
# returns 0 exit code if the major.minor form of the given two
# versions is equal
# argument 1: version1: a version string of the form x.y.z.w
# argument 2: version2: a version string of the form x.y.z.w
version_eq() {
  test "${1%.*.*}" == "${2%.*.*}"
}

# version_gt compares major.minor of the given two versions. It
# returns 0 exit code if the major.minor form of version1 is greater
# than that of version2
# https://web.archive.org/web/20191003081436/http://ask.xmodulo.com/compare-two-version-numbers.html
# argument 1: version1: a version string of the form x.y.z.w
# argument 2: version2: a version string of the form x.y.z.w
version_gt() {
  version1="${1%.*.*}"
  version2="${2%.*.*}"
  test "$(echo -e "${version1}\n${version2}" | sort -V | head -n 1)" != "${version1}"
}

# update_formula updates the given formula file with the new version's
# download url and checksum
# argument 1: formula_path: a complete path to ruby file of the formula
# argument 2: version: a version string of the form x.y.z.w
update_formula() {
  formula="$1"
  version="$2"
  # TODO: download URL as variable
  info "update_formula: updating the formula '${formula}' to '${version}'."
  brew bump-formula-pr --dry-run --write \
    --url "https://downloads.yugabyte.com/yugabyte-${version}-darwin.tar.gz" \
    "${formula}"
  modified_files="${modified_files} ${formula}"
}

# add_new_formula creates a versioned formula for old_version, updates
# the default formula with new_version and updates Aliases accordingly
# argument 1: new_version: a version string of the form x.y.z.w
# argument 2: old_version: a version string of the form x.y.z.w
add_new_formula() {
  new_version="$1"
  old_version="$2"
  short_old_version="${old_version%.*.*}"
  old_version_formula="${formula_directory}/${formula_name}@${short_old_version}.rb"

  # Create a versioned formula for old_version
  info "add_new_formula: creating a versioned formula '${old_version_formula}' for '${old_version}'."
  cp "${default_formula_file}" "${old_version_formula}"
  # Update the class for old_version_formula
  sed -i "" \
      "s/^class ${formula_class} < Formula$/class ${formula_class}AT${short_old_version//./} < Formula/g" \
      "${old_version_formula}"

  # Append keg_only: versioned_formula to old_version_formula
  sed -i "" '/^  sha256 "[0-9a-f]\{64\}"$/a\
  \
  \ \ keg_only :versioned_formula\
  ' "${old_version_formula}"

  modified_files="${modified_files} ${old_version_formula}"

  # Update the default formula with new_version
  update_formula "${default_formula_file}" "${new_version}"
  # Rename the Aliases to new_version
  info "add_new_formula: renaming the Aliases to '${new_version}'."
  mv "./Aliases/${formula_name}@${short_old_version}" \
     "./Aliases/${formula_name}@${new_version%.*.*}"

  modified_files="${modified_files} ./Aliases/${formula_name}@${short_old_version} ./Aliases/${formula_name}@${new_version%.*.*}"
}


if [[ -z "$1" ]]; then
  echo "This script needs at least one argument, latest_version is missing." 1>&2
  exit 1
fi

latest_version="$1"
formula_name="yugabytedb"
formula_class="Yugabytedb"
formula_directory="$(pwd)/Formula"
default_formula_file="${formula_directory}/${formula_name}.rb"
current_default_version="$(grep -E "^[[:space:]]+url" "${default_formula_file}" | cut -d "-" -f 2)"
versioned_formula_files="$(find -E "${formula_directory}" -regex ".*/${formula_name}@[0-9]+\.[0-9]+\.rb")"
modified_files=""

for formula in ${versioned_formula_files}; do
  version_from_file="$(grep -E "^[[:space:]]+url" "${formula}" | cut -d "-" -f 2)"
  list_of_versions="${list_of_versions} ${version_from_file}"
done

info "current default version: '${current_default_version}'."
info "list of versions from versioned formulas: '${list_of_versions}'."

# Patch update to default formula i.e. change in z or w from x.y.z.w
if version_eq "${latest_version}" "${current_default_version}"; then
  update_formula "${default_formula_file}" "${latest_version}"
  exit 0
fi

# New release i.e. change in x or y from x.y.z.w
if version_gt "${latest_version}" "${current_default_version}"; then
  add_new_formula "${latest_version}" "${current_default_version}"
  exit 0
fi

# Change in z or w for old versioned formula files
for version in ${list_of_versions}; do
  if version_eq "${latest_version}" "${version}"; then
    update_formula "${formula_directory}/${formula_name}@${version%.*.*}.rb" \
                   "${latest_version}"
    exit 0
  fi
done

info "the released version, '${latest_version}' is older than \
versions present in all the formula files in the repository."
