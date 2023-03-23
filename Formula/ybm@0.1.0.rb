class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.0/ybm_0.1.0_darwin_amd64.zip"
      sha256 "94cf968e6173bf43391ce6abe3f926a8ddc516e34dd848b466b7a388985bf440"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.0/ybm_0.1.0_darwin_arm64.zip"
      sha256 "fc668b735df9f470054620c1035900fcaa1697eeaedad9c9652fd1987bfe2bf2"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.0/ybm_0.1.0_linux_amd64.zip"
      sha256 "4e5ee30bbd292c1d2d8a9c9ab19ba2e178d5903581d0a8c2185097cb1b753763"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.0/ybm_0.1.0_linux_arm64.zip"
      sha256 "9be471eb7aa7d4a0213e1ccd520bdda3c3a022ee4b0599f6cfa8ccc36910390a"

      def install
        bin.install "ybm"
      end
    end
  end
end
