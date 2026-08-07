class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.33"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.33/ybm_0.1.33_darwin_amd64.zip"
      sha256 "a4aa5edbf72e6409aefc68746298cf2c6f9a768c5b2d5b1983f6f59933b89670"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.33/ybm_0.1.33_darwin_arm64.zip"
      sha256 "4d06e9e708977532fdc4f2c646b74a167ab125b20774bdc51223c6aa8c5a31b3"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.33/ybm_0.1.33_linux_amd64.zip"
      sha256 "4949f2b92382de14cb1e03791b41599fc4b96d6f22bbd67e8ab3d9e32a9bcb17"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.33/ybm_0.1.33_linux_arm64.zip"
      sha256 "12fbd87f1cbe78a49fb106870a5c6fb54e1a55701ef46bb3fc5886ef317a4daf"

      def install
        bin.install "ybm"
      end
    end
  end
end  
