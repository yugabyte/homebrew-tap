class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.9/ybm_0.1.9_darwin_amd64.zip"
      sha256 "81a64771ce5454736f0c8b073df8263ac7b94234a02b0839a30b0b938ab52866"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.9/ybm_0.1.9_darwin_arm64.zip"
      sha256 "8b097a3b4738ffe4e9dc82bdc7644a4b6f9a39d1b73108cf148ea9e87fff3076"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.9/ybm_0.1.9_linux_amd64.zip"
      sha256 "6cb2503375054028bf148252ce51716892ef71eb8b62f4ec00ca8998ca7f1884"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.9/ybm_0.1.9_linux_arm64.zip"
      sha256 "a475741889a50262542d73c3fc0192f11373de1030ea9c1ae40662b78191b98f"

      def install
        bin.install "ybm"
      end
    end
  end
end
