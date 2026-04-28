class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.31"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.31/ybm_0.1.31_darwin_amd64.zip"
      sha256 "1bddf01c340070ce4255abe16d34400c482285e1f503850d11d203d9056a1f4d"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.31/ybm_0.1.31_darwin_arm64.zip"
      sha256 "4a3ec4b3bbe72e9ef0d162f003e663f55cc980077c1d5db70bac259ebe470d79"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.31/ybm_0.1.31_linux_amd64.zip"
      sha256 "10c1a19a2714cf1ebc17bc426b8b6cda2ccf2e83c51a0f4d4aaa9b2a26a4954f"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.31/ybm_0.1.31_linux_arm64.zip"
      sha256 "bc84507459b16fc7478e0ecf34b2b1f97ce96c2517b344491eb336e57ce10fc1"

      def install
        bin.install "ybm"
      end
    end
  end
end  
