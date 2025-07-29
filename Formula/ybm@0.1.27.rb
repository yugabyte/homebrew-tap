class Ybm < Formula
    desc "YugabyteDB Managed CLI"
    homepage "https://github.com/yugabyte/ybm-cli"
    version "0.1.27"
    license "Apache-2.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.27/ybm_0.1.27_darwin_amd64.zip"
        sha256 "9b377fe66ced9ee36f975e4e14df8c037fe6e813d5384f7ad572c2b08ec5099d"
  
        def install
          bin.install "ybm"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.27/ybm_0.1.27_darwin_arm64.zip"
        sha256 "51ec42931b6db37aafcc06ed1dbc9fe8e67cc93534609bc3c400adb58f6f923e"
  
        def install
          bin.install "ybm"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.27/ybm_0.1.27_linux_amd64.zip"
        sha256 "4b4cde8d16c021dd93d730ea8309737e18bd8ea8340292292f5e4f9172ed9cdc"
  
        def install
          bin.install "ybm"
        end
      end
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.27/ybm_0.1.27_linux_arm64.zip"
        sha256 "5871ebe66d8594d788cd16a09fb9ce62f970d455e9a0f4f79f8e925e4145a724"
  
        def install
          bin.install "ybm"
        end
      end
    end
  end  
  