class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.6/ybm_0.1.6_darwin_amd64.zip"
      sha256 "54fa1be8dbc1e3c52a7e924940e1090d37226aa53b63a47760bf0eee68aef77b"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.6/ybm_0.1.6_darwin_arm64.zip"
      sha256 "68bc86d2fd1c6348eeec840e9e8f495354a1d3f844cef0bba97e79fb5d14a61b"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.6/ybm_0.1.6_linux_amd64.zip"
      sha256 "18af85b74aedf6969f90c6dd4d365aebd45b7d04cdceca7c7531c77a97d4a35e"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.6/ybm_0.1.6_linux_arm64.zip"
      sha256 "a6e8da8a75b8506d6edfee88d1995d7c7688db799fdc2ca1d51584b784bbe18d"

      def install
        bin.install "ybm"
      end
    end
  end
end
