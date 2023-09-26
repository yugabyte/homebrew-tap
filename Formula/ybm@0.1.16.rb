class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.16"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.16/ybm_0.1.16_darwin_amd64.zip"
      sha256 "163315931d3eab30723ca30cd6f830bde8e883501dcc71d7b360b7a73ffa4daf"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.16/ybm_0.1.16_darwin_arm64.zip"
      sha256 "5e443ac6e76a53996277d56ede01d8155fc7df6b2a648816d46c8cfe643a4e30"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.16/ybm_0.1.16_linux_amd64.zip"
      sha256 "423888df8cd24e55808d29c63e703b6c23eed5b103ec364e75ee2af810b39976"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.16/ybm_0.1.16_linux_arm64.zip"
      sha256 "4c751ba585ec7252d967445cfea211b98fff84b33d898ead2aa2f46239e76d0a"

      def install
        bin.install "ybm"
      end
    end
  end
end
