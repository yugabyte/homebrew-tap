class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.0.16"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.16/ybm_0.0.16_darwin_amd64.zip"
      sha256 "f8770087d2456da2a2d92b618618b3b87daf8202cc487cc7ff7d0741d0d24940"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.16/ybm_0.0.16_darwin_arm64.zip"
      sha256 "90296a0bc645c9a98e49d85cda8b97b359a086f00cca7894ef6e8f6883feb9b4"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.16/ybm_0.0.16_linux_amd64.zip"
      sha256 "e8135ff89e6abce147648ccfbbff6e9ba698d8a01152b3006a7d10389afc41fb"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.16/ybm_0.0.16_linux_arm64.zip"
      sha256 "522c87b2becce4b4b2bf7c28a55de309c43a67fd60d56aa0e7a53d404ea8d791"

      def install
        bin.install "ybm"
      end
    end
  end
end
