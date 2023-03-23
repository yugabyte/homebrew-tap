class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.1/ybm_0.1.1_darwin_amd64.zip"
      sha256 "7012058ece2f8e1e060903a2dfb2dc006419bc18ee45d4f52c5fb8cb263c9a60"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.1/ybm_0.1.1_darwin_arm64.zip"
      sha256 "df81073486680e1d08a39fa64cba9a9c2e1d43f301cbc2425132ba4827779e41"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.1/ybm_0.1.1_linux_amd64.zip"
      sha256 "ac71d28c1aee36995fe05a7a3af2ba54c2fcadee38c74ccea7f15fd8de713b3a"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.1/ybm_0.1.1_linux_arm64.zip"
      sha256 "e187657b0ca0a592fde9defa63218db294dfe458d421b4530c1d344812143b75"

      def install
        bin.install "ybm"
      end
    end
  end
end
