class Ybm < Formula
    desc "YugabyteDB Managed CLI"
    homepage "https://github.com/yugabyte/ybm-cli"
    version "0.1.25"
    license "Apache-2.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.25/ybm_0.1.25_darwin_amd64.zip"
        sha256 "ffde7935f6c75c6b841d9399b534a299bb9e83e1a4a25df8734f1d6a7f2d3c7a"
  
        def install
          bin.install "ybm"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.25/ybm_0.1.25_darwin_arm64.zip"
        sha256 "793140f3ec9df7ccb15fe674616569a959030ec58eba5e33b51b3023c55ab5fd"
  
        def install
          bin.install "ybm"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.25/ybm_0.1.25_linux_amd64.zip"
        sha256 "17bdcbf6b6ba850f4b7c4ce5b46b3fa2e4cc98b1aaae55a0cad7745b28325ea9"
  
        def install
          bin.install "ybm"
        end
      end
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.25/ybm_0.1.25_linux_arm64.zip"
        sha256 "04d86095ed6ce44aafe032531495fd3de98cc7aebe4332828f931594c62234ed"
  
        def install
          bin.install "ybm"
        end
      end
    end
  end  
  