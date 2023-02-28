class YbmAT0011 < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.0.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.11/ybm_0.0.11_darwin_amd64.zip"
      sha256 "2e946b364a3a95751926121942f343c4ba36e1c529408c5fac7d9651c239ee52"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.11/ybm_0.0.11_darwin_arm64.zip"
      sha256 "fde4966b8e38d568d15b9503be7f15dac5487d892157315b07f79e18bf2b6306"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.11/ybm_0.0.11_linux_amd64.zip"
      sha256 "9045940063c265592bba1dba5ac279fe1fe41bc56307ec612e4e224d90ede5b1"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.11/ybm_0.0.11_linux_arm64.zip"
      sha256 "24e6dc22cc6e3c838e0cc5744207a9e0136ccdd59462bcbda31a55177ca8cb91"

      def install
        bin.install "ybm"
      end
    end
  end
end
