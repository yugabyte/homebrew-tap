class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.20"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.20/ybm_0.1.20_darwin_amd64.zip"
      sha256 "2e436677852dbba6943e38ac8483fda2bb1247c4c4ae0208c0815c325d7a5634"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.20/ybm_0.1.20_darwin_arm64.zip"
      sha256 "f4ef71bdd805027708d65e0016ebf727d15c023c40bc7a68ca57b58153b05c03"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.20/ybm_0.1.20_linux_amd64.zip"
      sha256 "19bb72a468840f2b29ebef403dccb5f2f2851e00a01bc853fd73cc8e40724dee"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.20/ybm_0.1.20_linux_arm64.zip"
      sha256 "132be6dc2d6a4950e88367a0d49c88d95935f17f5fa4addc14b7580908090465"

      def install
        bin.install "ybm"
      end
    end
  end
end  