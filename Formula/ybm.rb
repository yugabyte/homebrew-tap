class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.12/ybm_0.1.12_darwin_amd64.zip"
      sha256 "3559263939122ac97f8e663857e014d502a0cbc70e455468b5390c85c108a96a"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.12/ybm_0.1.12_darwin_arm64.zip"
      sha256 "d963af16080889c9865fb0e531ec06f764e22bfd746430315c396e45156213d9"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.12/ybm_0.1.12_linux_amd64.zip"
      sha256 "4f31ce36320b5c01ad54923d16d7e2ec147a4989f597f14a9ff8f534e3b24971"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.12/ybm_0.1.12_linux_arm64.zip"
      sha256 "6dbdbf204bc2716f0f9a2c7fd3ee07815c5047222f7a488509836a6c9616f25a"

      def install
        bin.install "ybm"
      end
    end
  end
end
