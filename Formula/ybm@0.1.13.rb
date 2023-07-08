class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.13/ybm_0.1.13_darwin_amd64.zip"
      sha256 "3cd89bd653aa1c831bcc0c9052c3ac1a1499e35ecbec04c2735fca69884e93a3"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.13/ybm_0.1.13_darwin_arm64.zip"
      sha256 "b748b24c91a37b224a1d6b0e92026d4e777b32fcc9e26cf4b84ac923a6356baf"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.13/ybm_0.1.13_linux_amd64.zip"
      sha256 "c3c8686b771ea3d592b0b133980c6ee8e0fbd483e663cdc83d1962b1701b0584"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.13/ybm_0.1.13_linux_arm64.zip"
      sha256 "bcc49bf07a31a8019449f0655bff3eb725f896e9f31ebd3a35cb389bf33d2e8c"

      def install
        bin.install "ybm"
      end
    end
  end
end
