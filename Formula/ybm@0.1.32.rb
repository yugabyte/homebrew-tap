class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.32"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.32/ybm_0.1.32_darwin_amd64.zip"
      sha256 "5625cf5df7e4041851113502cf90dc4a73143afc19a0a6cd6b6aa55c4ea34f72"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.32/ybm_0.1.32_darwin_arm64.zip"
      sha256 "7f20062f3ebc8fe0a352074be5d3054fed99eab32d756b278b22882f24e7ccdf"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.32/ybm_0.1.32_linux_amd64.zip"
      sha256 "34c3d6ea1e96a9055837515cece3e4c6d2ed3a737705097c11bb7c2c5a605b49"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.32/ybm_0.1.32_linux_arm64.zip"
      sha256 "5153383c5d951d669a3756543732bc5ebf6bdd711d416a13ae9cdf892d993c87"

      def install
        bin.install "ybm"
      end
    end
  end
end  
