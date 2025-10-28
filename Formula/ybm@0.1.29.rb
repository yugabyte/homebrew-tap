class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.29"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.29/ybm_0.1.29_darwin_amd64.zip"
      sha256 "59a11d75a5af053d1076d3df55fa9ba5bfdd7695b25cf8cfe68d83299269f95c"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.29/ybm_0.1.29_darwin_arm64.zip"
      sha256 "b9f7f3c5d307df09941372d25e95f43f3b7a13372d28886c501076830cd7dd1a"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.29/ybm_0.1.29_linux_amd64.zip"
      sha256 "9b7459d0436bf69d87cfa272e9abbb190a205eb92a8a94201aa228d4e79a1cb0"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.29/ybm_0.1.29_linux_arm64.zip"
      sha256 "e409dfdd1ce4411598bf049254dcd43f3e29b87b1c7641ee27e1e34240863577"

      def install
        bin.install "ybm"
      end
    end
  end
end  
