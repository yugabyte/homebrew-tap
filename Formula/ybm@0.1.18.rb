class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.18"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.18/ybm_0.1.18_darwin_amd64.zip"
      sha256 "660045ce9a55e3c1550274901d3795e728b3ab93d92d51a0db48e8fa6d66cedc"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.18/ybm_0.1.18_darwin_arm64.zip"
      sha256 "267cf914f0a496f2fdbcc817e44c4a7d3ad00bfb6c5fd27574b7f564526eac73"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.18/ybm_0.1.18_linux_amd64.zip"
      sha256 "64cd58e80821f162bb15083529008926337de76d73d37364f4fbf3d67c034b13"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.18/ybm_0.1.18_linux_arm64.zip"
      sha256 "63f9783787fd9419a9a252777a07b0dd28e9eb70dacaec1b8bff01d9d8cb422b"

      def install
        bin.install "ybm"
      end
    end
  end
end
