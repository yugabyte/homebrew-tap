class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.30"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.30/ybm_0.1.30_darwin_amd64.zip"
      sha256 "6039faae1a83c13f352d57f584b844d2c4b87126b9b01a2b24e8d6f9404fcf78"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.30/ybm_0.1.30_darwin_arm64.zip"
      sha256 "7a08f309a32338a536c45efdca47dc08dc70f0cb49a6467789d668903819dd96"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.30/ybm_0.1.30_linux_amd64.zip"
      sha256 "68a347d447c658ecf7cca695adc5be927c3321495d6f09ae10285d70996c2fb2"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.30/ybm_0.1.30_linux_arm64.zip"
      sha256 "27ac325d987897e777caf5cabc566b8d1c5ee31793db232b96de62b2dde39568"

      def install
        bin.install "ybm"
      end
    end
  end
end  
