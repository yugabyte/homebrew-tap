class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.34"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.34/ybm_0.1.34_darwin_amd64.zip"
      sha256 "212b042ac12e3a34caf8937eefba9a629a33a138e6781abcf6bf99ffb6ed656d"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.34/ybm_0.1.34_darwin_arm64.zip"
      sha256 "2b345dc49ef1e68fe73c82e9fc9aa24c0f9964a830e9d2133c9e969d975b2268"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.34/ybm_0.1.34_linux_amd64.zip"
      sha256 "aedc692a568caee85472a7c066d9735ba6b7d8f80dc769b7aab8daaa5dd21918"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.34/ybm_0.1.34_linux_arm64.zip"
      sha256 "967256899521af19171aa7af99740553d0b1f0c1e74fd904b9dda9641c88cb4d"

      def install
        bin.install "ybm"
      end
    end
  end
end  
