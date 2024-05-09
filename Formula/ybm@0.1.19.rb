class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.19"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.19/ybm_0.1.19_darwin_amd64.zip"
      sha256 "1d21f5d71830137020ba7bd7f3236dd2211f22752727a8e32735f77a944c9260"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.19/ybm_0.1.19_darwin_arm64.zip"
      sha256 "2a25b471e50c149210344958c93e27ba5656dcc2048b75150152bd04437edf50"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.19/ybm_0.1.19_linux_amd64.zip"
      sha256 "a226e2de7ec283588a8b419e45464e742c5e0f5f4cb066635835b0222e92d6c8"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.19/ybm_0.1.19_linux_arm64.zip"
      sha256 "53170c257c932eba1096d35c1638f2bfc5049367144aa418da9dd70236568598"

      def install
        bin.install "ybm"
      end
    end
  end
end
