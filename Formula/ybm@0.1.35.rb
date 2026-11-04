class YbmAT0135 < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.35"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.35/ybm_0.1.35_darwin_amd64.zip"
      sha256 "18294efc0c1b9a3090e8f48de9dc321512b7bd3d4d2239cc1fd8b1099a571aee"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.35/ybm_0.1.35_darwin_arm64.zip"
      sha256 "a97a9078cdde5453ee54937b9fa3e6398306115461711de6e62ddc6c53832b81"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.35/ybm_0.1.35_linux_amd64.zip"
      sha256 "387905025989d9faaf73e1af5ad11691d1a27beec366b113a915a2f539175428"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.35/ybm_0.1.35_linux_arm64.zip"
      sha256 "ac9a52c61e8c707d3988ebe5399ade1bb6f50e6967e222b35ac9b0488e458093"

      def install
        bin.install "ybm"
      end
    end
  end
end  
