class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.5/ybm_0.1.5_darwin_amd64.zip"
      sha256 "2eb4d053a6a926ad90eee63096aaa7660da81c8e1c1a1b679a69615ae483af39"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.5/ybm_0.1.5_darwin_arm64.zip"
      sha256 "277c9943c27d2f3ad713b40f505a3c89851fbb77f39528d45ab8ad3abb03dfc0"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.5/ybm_0.1.5_linux_amd64.zip"
      sha256 "ba59a504b58b2107344c0f8d0ce41232e94bd92ed1e3ad9c8e83558eca845440"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.5/ybm_0.1.5_linux_arm64.zip"
      sha256 "b71c5448528e23b56a1eb3b8f00f594a604129858307e9f9207584516d4ac8e8"

      def install
        bin.install "ybm"
      end
    end
  end
end
