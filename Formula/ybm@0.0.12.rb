class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.0.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.12/ybm_0.0.12_darwin_amd64.zip"
      sha256 "ea7b0b6b52df4817be782e9dc18af2c03c4155df475f8be180e371e3943ea768"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.12/ybm_0.0.12_darwin_arm64.zip"
      sha256 "6a2a328326e237ffd31de09a80ca661eace6ce2d8b0af09cf87064faf15aa6b0"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.12/ybm_0.0.12_linux_amd64.zip"
      sha256 "7630acdac0c9bc4b962dae59c2051566234d4c0828d636d33387b834b2ebd7df"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.12/ybm_0.0.12_linux_arm64.zip"
      sha256 "ee6dee46fe5eb75884c41e02ba38ccac810b462a7dfcaf12383e2f95678e6372"

      def install
        bin.install "ybm"
      end
    end
  end
end
