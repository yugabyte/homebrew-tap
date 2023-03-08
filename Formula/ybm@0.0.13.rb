class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.0.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.13/ybm_0.0.13_darwin_amd64.zip"
      sha256 "d650ceb42ff78aa819849b9317fbe4a8f8fe0264d36a8faf03bb70dc7696e91b"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.13/ybm_0.0.13_darwin_arm64.zip"
      sha256 "d0811c3ac1b99d310bf75be8652131320be5b2b94e9fe00890249573d11b0b51"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.13/ybm_0.0.13_linux_amd64.zip"
      sha256 "14103dec1a75421255ab27917e652d2d13b302ab7762a6f038465248a10a0b2f"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.13/ybm_0.0.13_linux_arm64.zip"
      sha256 "e65aa6ac070c13be102f338d1e8812a91150006f5092789820d663bbb5b0e473"

      def install
        bin.install "ybm"
      end
    end
  end
end
