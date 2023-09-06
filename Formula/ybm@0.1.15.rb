class Ybm < Formula
    desc "YugabyteDB Managed CLI"
    homepage "https://github.com/yugabyte/ybm-cli"
    version "0.1.15"
    license "Apache-2.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.15/ybm_0.1.15_darwin_amd64.zip"
        sha256 "71f7b70b6a64e1f7294219ad7e615c35c03a91acb07907671a255ab5df9f609c"
  
        def install
          bin.install "ybm"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.15/ybm_0.1.15_darwin_arm64.zip"
        sha256 "ebc337334dd68a1448004792b308a3f30e0d766ed7431131f6c440bedfbd47a4"
  
        def install
          bin.install "ybm"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.15/ybm_0.1.15_linux_amd64.zip"
        sha256 "d48bfeaf1e836ad6eefce10315731a9c20ac4d7b3c84d9023b55e9d0546e0809"
  
        def install
          bin.install "ybm"
        end
      end
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.15/ybm_0.1.15_linux_arm64.zip"
        sha256 "c6017d82039620668f5fb8c545e80fbe9f720ccdcb3c078b707c6cb7bae137a7"
  
        def install
          bin.install "ybm"
        end
      end
    end
  end
  