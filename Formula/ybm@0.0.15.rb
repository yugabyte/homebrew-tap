class Ybm < Formula
  desc "YugabyteDB Managed CLI"
  homepage "https://github.com/yugabyte/ybm-cli"
  version "0.0.15"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.15/ybm_0.0.15_darwin_amd64.zip"
      sha256 "b8b8df08238e24579d6aee2d135bcbbfd8d97448e57c3cea52f102b758563333"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.15/ybm_0.0.15_darwin_arm64.zip"
      sha256 "081fa43df605ee51fc70c14bd8fb3dbf42079b354ae9c837093851c726689ec0"

      def install
        bin.install "ybm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.15/ybm_0.0.15_linux_amd64.zip"
      sha256 "657f0ca65375c6964bc679cb4ccec3a54a01f008e532568a6762389c91066fb7"

      def install
        bin.install "ybm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yugabyte/ybm-cli/releases/download/v0.0.15/ybm_0.0.15_linux_arm64.zip"
      sha256 "515bb0bbecacdcae9971578ff94e8777c380193f1db768dcd0a02a87755a2e16"

      def install
        bin.install "ybm"
      end
    end
  end
end
