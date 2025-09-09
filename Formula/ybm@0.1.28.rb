class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.28"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.28/ybm_0.1.28_darwin_amd64.zip"
      sha256 "11e85b1c9e6673e88d234d16437f06d874d1246504d10ed23a30a8695739b029"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.28/ybm_0.1.28_darwin_arm64.zip"
      sha256 "f02aeba85d56888d267f6c60d5fdc9664b50aeba134c0531437ea44917b4dce9"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.28/ybm_0.1.28_linux_amd64.zip"
      sha256 "808d50cf9883ef9df4f1d0d4c0524f3ec88f4e3e32649016877dde69f3c4e03e"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.28/ybm_0.1.28_linux_arm64.zip"
      sha256 "b826723691dfb646b7913b1b3a7c94cf31ae8069f5d3c608701b15986ce20140"

      def install
        bin.install "ybm"
      end
    end
  end
end  
