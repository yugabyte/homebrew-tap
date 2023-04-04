class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.4/ybm_0.1.4_darwin_amd64.zip"
      sha256 "3c46f3096454d3b29f565fc761230507f6c2b522fa36fd748970913fb16a62b8"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.4/ybm_0.1.4_darwin_arm64.zip"
      sha256 "6a6095a3dc3e468a1a04007232d6aea04b552bc8ff27893c3f44be42815fe72a"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.4/ybm_0.1.4_linux_amd64.zip"
      sha256 "5df04f76e8eebd4df7cbd323852288b1459b82b92b91e25c7a5771bd73a0ed38"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.4/ybm_0.1.4_linux_arm64.zip"
      sha256 "a4c8229629b3bc5c0f5e2e69909d9dfd13b6887549c21bddbeaa855d442c3af0"

      def install
        bin.install "ybm"
      end
    end
  end
end
