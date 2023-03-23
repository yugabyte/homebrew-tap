class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.0.17"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.17/ybm_0.0.17_darwin_amd64.zip"
      sha256 "a31a3f40caa5c73b4489e5b77e8c2fbbd8012eba776a902d6a252c2e359484e2"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.17/ybm_0.0.17_darwin_arm64.zip"
      sha256 "215b8fbd6465222e508faf79b44f2c9548e370d7e7b9f9f23c280d29f94e2aa3"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.17/ybm_0.0.17_linux_amd64.zip"
      sha256 "ad37c26308923a06f5139e0b8a446b78c243e969458e99daae15b1598550ddc1"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.17/ybm_0.0.17_linux_arm64.zip"
      sha256 "97f3a0b8326e2b7ad56fbeccc7e213c248ec65f358961433f2f275f7de5986a2"

      def install
        bin.install "ybm"
      end
    end
  end
end
