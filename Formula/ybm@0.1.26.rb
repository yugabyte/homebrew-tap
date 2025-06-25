class Ybm < Formula
    desc "YugabyteDB Managed CLI"
    homepage "https://github.com/yugabyte/ybm-cli"
    version "0.1.26"
    license "Apache-2.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.26/ybm_0.1.26_darwin_amd64.zip"
        sha256 "873407071cdea30eed499bc644339fb0dc118edf10a635a1888b333dd48d716d"
  
        def install
          bin.install "ybm"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.26/ybm_0.1.26_darwin_arm64.zip"
        sha256 "62f4e3f166bceae27f266f140f689c30fe532afe5e6c79022ab015aed66d1428"
  
        def install
          bin.install "ybm"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.26/ybm_0.1.26_linux_amd64.zip"
        sha256 "0f251ee8f9b66d97cbc59c09e52f41a75b5570b76849cfa20d0cf88323c0e865"
  
        def install
          bin.install "ybm"
        end
      end
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.26/ybm_0.1.26_linux_arm64.zip"
        sha256 "2d0cfc440c2143a2868cac2ffceda50fa2fd20338c22a6bc5772ccf7cb81b9ce"
  
        def install
          bin.install "ybm"
        end
      end
    end
  end  
  