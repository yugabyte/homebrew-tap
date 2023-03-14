class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.0.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.14/ybm_0.0.14_darwin_amd64.zip"
      sha256 "175775595f9ea19f8b50da3bfcd59c692f639ce9590320b8512303f76c424e53"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.14/ybm_0.0.14_darwin_arm64.zip"
      sha256 "0b26a8ef57793483d42ce2d7dc1f2f65deae4bf060929d52deec1eb4b34dfea8"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.14/ybm_0.0.14_linux_amd64.zip"
      sha256 "4b151cbdd891cc99c79bc38fe26cce4336ae139c91777aadb51d3d1d62e697ed"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.14/ybm_0.0.14_linux_arm64.zip"
      sha256 "7a7e361c2c83e5d30d28ddcc42945224a93bfbc65b6b61df874144100b1edc6b"

      def install
        bin.install "ybm"
      end
    end
  end
end
