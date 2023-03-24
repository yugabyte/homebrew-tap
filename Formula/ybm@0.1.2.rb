class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.2/ybm_0.1.2_darwin_amd64.zip"
      sha256 "044a625fd3f1e365adeaedd4efd31a161e1e341be58a930317eff00a247d808d"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.2/ybm_0.1.2_darwin_arm64.zip"
      sha256 "7a18382cfcfe9a12cebe017140699ebbe94acead33b97a020f8492e843271a8c"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.2/ybm_0.1.2_linux_amd64.zip"
      sha256 "5118b58dd1f62e6f2cffb5605c5933e5f6291d4e46a9cf99544b8f196bcee02b"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.2/ybm_0.1.2_linux_arm64.zip"
      sha256 "1af40ce6e4cb6ff5d5d34d0b4ead94b7ad3cb1ef627b3a1dce3840a73af156e1"

      def install
        bin.install "ybm"
      end
    end
  end
end
