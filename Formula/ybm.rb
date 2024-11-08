class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.21"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.21/ybm_0.1.21_darwin_amd64.zip"
      sha256 "bc87ff7cdf461468282f70955e72c7b8c081a3b5344af23468a838ff855e009a"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.21/ybm_0.1.21_darwin_arm64.zip"
      sha256 "ab2a594a433ba9d9504786d715e33803ac67398e7f3f52b1c209122af7341365"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.21/ybm_0.1.21_linux_amd64.zip"
      sha256 "b38bcbc3f3d776f869f30421f4f65a2db26332a5cc18b54e96c049dae5872f5a"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.21/ybm_0.1.21_linux_arm64.zip"
      sha256 "0fa12bdbb7fbbbc1a44a471885fa88591cf777fba4f073c716bb7e3c9128fb40"

      def install
        bin.install "ybm"
      end
    end
  end
end  
