class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.10/ybm_0.1.10_darwin_amd64.zip"
      sha256 "b4000fe200121ed91b8ab1c088314518d7cd55caa29b68935cb440a2aa6567c7"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.10/ybm_0.1.10_darwin_arm64.zip"
      sha256 "f70177fa7dd3f34dd1cd4c60f9258b849b191fa94a0357ccf371f8b364af61e9"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.10/ybm_0.1.10_linux_amd64.zip"
      sha256 "859ff721cc6778b5ff564627a6fddbbaa5d2e1aca968a67934dc4e5e6960208e"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.10/ybm_0.1.10_linux_arm64.zip"
      sha256 "71e1e81e80f832c6a3351dcf1505fcd90d9bf61127588a7618a678bb534c8297"

      def install
        bin.install "ybm"
      end
    end
  end
end
