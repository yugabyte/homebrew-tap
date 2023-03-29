class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.3/ybm_0.1.3_darwin_amd64.zip"
      sha256 "7e2630ede467447f3f082212405968a04bd463aedcbfdc859745b3dbe4232491"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.3/ybm_0.1.3_darwin_arm64.zip"
      sha256 "29c93a4d5417008cd6fdb17de91f7a186cc170e04fab66f3b9334ae16535a30e"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.3/ybm_0.1.3_linux_amd64.zip"
      sha256 "50ee5bc209841f991e6b328a430208aec44b86d6f9dd72681e85177ace3a71d4"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.3/ybm_0.1.3_linux_arm64.zip"
      sha256 "d33ec0b6e39aed90cc3fc3fd7a26d82d422cf61cbad77eb073de23bb527123e7"

      def install
        bin.install "ybm"
      end
    end
  end
end
