class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.24"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.24/ybm_0.1.24_darwin_amd64.zip"
      sha256 "7a1090a3f508f281ead7c679df3e5ce1d48829ac7b873388b6b0e21a80835910"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.24/ybm_0.1.24_darwin_arm64.zip"
      sha256 "1c5563f506eff2b16788ba201a71837c8156ea10e08d0c27c5d4275d533b0b2d"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.24/ybm_0.1.24_linux_amd64.zip"
      sha256 "2e7afb9be7afdf33aeeae15ceb49c77f6ce997cf3fec2688d62387e22a6fd4b6"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.24/ybm_0.1.24_linux_arm64.zip"
      sha256 "7e704f78cd651c81d2815f56c72e86248294f5ef8dc4a2d300bb65dafb4a4f1a"

      def install
        bin.install "ybm"
      end
    end
  end
end  
