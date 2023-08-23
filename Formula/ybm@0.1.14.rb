class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.14/ybm_0.1.14_darwin_amd64.zip"
      sha256 "c96b9bf9bf3364e46b728cac3cfefb27335510a75e3d177940a74494919be504"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.14/ybm_0.1.14_darwin_arm64.zip"
      sha256 "f4c6ca7db3c333de542f3e5cbce05c6914097f3653178466e3acd8fc604ebe93"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.14/ybm_0.1.14_linux_amd64.zip"
      sha256 "cb2a3434e43cf684844ffc950e6924cd26fba4b7bcaafe52d16edad7d656e449"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.14/ybm_0.1.14_linux_arm64.zip"
      sha256 "a1800e950069ceb97b4ff2b47300b2f5f26733ed0f59d06ce163d77939d9b9f4"

      def install
        bin.install "ybm"
      end
    end
  end
end
