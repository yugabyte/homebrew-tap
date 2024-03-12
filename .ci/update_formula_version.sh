#!/usr/bin/env bash

set -o errexit -o pipefail

export_modified_files() {
  echo "modified_files=${modified_files}" >> $GITHUB_OUTPUT
}

trap export_modified_files EXIT


info() {
  echo -e "\033[34m[INFO]\033[0m $*"
}

# get_major_minor_version breaks a version in format x.y.z.w into
# major (x.y) and minor (z.w)
# argument 1: a version string of the form x.y.z.w
get_major_minor_version() {
    version="$1"

    version_major="${version%.*.*}"
    version_minor="${version#*.*.}"

    echo "$version_major $version_minor"
}

# is_major_gt compares major(x.y) of the given two versions. It
# returns 0 exit code if the major form of version1
# is greater than version2
# argument 1: version1: a version string of the form x.y.z.w
# argument 2: version2: a version string of the form x.y.z.w
is_major_gt() {
    version1="$1"
    version2="$2"

    split_version1=$(get_major_minor_version $version1)
    read -r version1_major version1_minor <<< "$split_version1"

    split_version2=$(get_major_minor_version $version2)
    read -r version2_major version2_minor <<< "$split_version2"

    if [ "$version1_major" \> "$version2_major" ]; then
        return 0
    else
        return 1
    fi
}

# is_major_eq compares major(x.y) of the given two versions. It
# returns 0 exit code if the major form of the given two
# versions is equal
# argument 1: version1: a version string of the form x.y.z.w
# argument 2: version2: a version string of the form x.y.z.w
is_major_eq() {
    version1="$1"
    version2="$2"

    split_version1=$(get_major_minor_version $version1)
    read -r version1_major version1_minor <<< "$split_version1"

    split_version2=$(get_major_minor_version $version2)
    read -r version2_major version2_minor <<< "$split_version2"

    if [ "$version1_major" == "$version2_major" ]; then
        return 0
    else
        return 1
    fi
}

# is_minor_gt compares minor(x.y) of the given two versions. It
# returns 0 exit code if the major form of both are equal and
# minor form of version1 is greater than version2
# argument 1: version1: a version string of the form x.y.z.w
# argument 2: version2: a version string of the form x.y.z.w
is_minor_gt() {
    version1="$1"
    version2="$2"

    split_version1=$(get_major_minor_version $version1)
    read -r version1_major version1_minor <<< "$split_version1"

    split_version2=$(get_major_minor_version $version2)
    read -r version2_major version2_minor <<< "$split_version2"

    if [ "$version1_major" == "$version2_major" ] && [ "$version1_minor" \> "$version2_minor" ]; then
        return 0
    else
        return 1
    fi
}

# update_formula_file updates the given formula file with the new version's
# download url, version and checksum
# argument 1: formula_file: a complete path to ruby file of the formula
# argument 2: new_version: a version string of the form x.y.z.w
update_formula_file() {
    formula_file="$1"
    new_version="$2"

    info "update_formula_file: Trying to update '${formula_file}' with new version '${new_version}"
    package_name=$(curl -s "https://downloads.yugabyte.com/releases/${new_version}/manifest.json" | jq -r '.packages[] | select(endswith("-darwin-x86_64.tar.gz"))') || {
		info "Cannot get package name for $new_version. Does manifest for it exists?"
		exit 1
	}

    download_link="https://downloads.yugabyte.com/releases/${new_version}/${package_name}"
    checksum=$(curl -sSL "$download_link" | { shasum -a 256 || sha256sum; } | awk '{print $1}')

    info "update_formula_file: Download URL: '${download_link}'. sha256: '${checksum}'"
    sed -i '' -e "s|url \".*\"|url \"$download_link\"|" \
             -e "s|sha256 \".*\"|sha256 \"$checksum\"|" \
             -e "s|version \".*\"|version \"$new_version\"|" "$formula_file"

    modified_files="${modified_files} ${formula_file}"
}

# add_new_versioned_formula creates a versioned formula for the given version
# argument 1: new_version: a version string of the form x.y.z.w
add_new_versioned_formula() {
    new_version="$1"

    split_new_version=$(get_major_minor_version $new_version)
    read -r new_version_major new_version_minor <<< "$split_new_version"

    new_version_formula_file="${formula_directory}/${formula_name}@${new_version_major}.rb"

    # Create a versioned formula for old_version
    info "add_new_versioned_formula: creating a versioned formula '${new_version_formula_file}' for '${new_version}'."
    cp "${default_formula_file}" "${new_version_formula_file}"

    # Update the class for old_version_formula
    info "Update the class for '${new_version_formula_file}' with '${new_version_major}'"
    sed -i "" \
        "s/^class ${formula_class} < Formula$/class ${formula_class}AT${new_version_major//./} < Formula/g" \
        "${new_version_formula_file}"

    # Append keg_only: versioned_formula to old_version_formula
    info "Append 'keg_only: versioned_formula' to '${new_version_formula_file}'"
    sed -i '' '/license/{s/.*/&\
\
  keg_only :versioned_formula/;}' $new_version_formula_file

    update_formula_file "${new_version_formula_file}" "${new_version}"
}

# add_new_default_version creates a versioned formula for old_default_version,
# updates the default formula with new_version and updates Aliases accordingly
# argument 1: new_default_version: a version string of the form x.y.z.w
# argument 2: old_default_version: a version string of the form x.y.z.w
add_new_default_version() {
    new_default_version="$1"
    old_default_version="$2"

    info "add_new_default_version: Creating a new versioned formula for '${old_default_version}' and updating default brew version to '${new_default_version}'."

    add_new_versioned_formula "${old_default_version}"

    update_formula_file "${default_formula_file}" "${new_default_version}"

    # Rename the Aliases to new_version
    info "add_new_default_version: renaming the Aliases to '${new_default_version}'."
    mv "./Aliases/${formula_name}@${old_default_version%.*.*}" \
        "./Aliases/${formula_name}@${new_default_version%.*.*}"

    modified_files="${modified_files} ./Aliases/${formula_name}@${old_default_version%.*.*} ./Aliases/${formula_name}@${new_version%.*.*}"
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
current_default_version="$(grep -E "^[[:space:]]+version" "$default_formula_file" | awk '{print $2}' | tr -d '"')"
versioned_formula_files="$(find -E "${formula_directory}" -regex ".*/${formula_name}@[0-9]+\.[0-9]+\.rb")"
modified_files=""

for formula in ${versioned_formula_files}; do
  version_from_file="$(grep -E "^[[:space:]]+version" "$formula" | awk '{print $2}' | tr -d '"')"
  list_of_versions="${list_of_versions} ${version_from_file}"
done

info "current default version: '${current_default_version}'."
info "list of versions from versioned formulas: '${list_of_versions}'."

# Case 1: When major of latest version is greater than the version in current default formula
# Make the latest version as the default, and create a versioned formula for current default version
if is_major_gt $latest_version $current_default_version; then
    add_new_default_version "${latest_version}" "${current_default_version}"
    exit 0
else
    # Case 2: When major of latest version and the version in current default formula are equal
    # but minor of latest version is greater than the version in current default formula
    # Update the default formula with the new version.
    if is_minor_gt $latest_version $current_default_version; then
		update_formula_file "${default_formula_file}" "${latest_version}"
        exit 0
    fi

    # Case 3: When major of latest version and the version in current default formula are equal
    # but minor of latest version is not greater than the version in current default formula (checked in above if block)
    if is_major_eq $latest_version $current_default_version; then
        info "Major of '${latest_version}' and '${current_default_version}' is same but minor of '${latest_version}' is lower or equal than '${current_default_version}'"
        exit 0
    fi
fi

version_not_in_List_of_version=true

for formula in ${list_of_versions}; do
    if is_major_eq $latest_version $formula; then
        version_not_in_List_of_version=false

        # Case 4: When major of latest version and the version in a versioned formula are equal
        # but minor of latest version is greater than the version in the versioned formula
        # Update the versioned formula with the new version.
        if is_minor_gt $latest_version $formula; then
			split_formula_version=$(get_major_minor_version $formula)
    		read -r version_major version_minor <<< "$split_formula_version"

			formula_file_to_be_updated="${formula_directory}/${formula_name}@${version_major}.rb"
			update_formula_file "${formula_file_to_be_updated}" "${latest_version}"
            exit 0
        fi

        info "Major of '${latest_version}' and '${formula}' is same but minor of '${latest_version}' is smaller than '${formula}'"
    fi
done

# Case 4: When major of latest version is not in the list of versioned formulas
# Add a new versioned formula
if $version_not_in_List_of_version; then
    info "'${latest_version}' not in default formula ('${current_default_version}') and list of versioned formulas ('${list_of_versions}')"
	add_new_versioned_formula "${latest_version}"
    exit 0
fi

info "the released version, '${latest_version}' is older than \
versions present in all the formula files in the repository."
