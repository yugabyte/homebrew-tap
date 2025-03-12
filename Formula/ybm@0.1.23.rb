class Ybm < Formula
    desc "YugabyteDB Managed CLI"
    homepage "https://github.com/yugabyte/ybm-cli"
    version "0.1.23"
    license "Apache-2.0"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.23/ybm_0.1.23_darwin_amd64.zip"
        sha256 "92631d3c478c7b22a93bd6d3b5af9201c0cb3f9dbfe12168d6a3838a635506d4"

        def install
          bin.install "ybm"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.23/ybm_0.1.23_darwin_arm64.zip"
        sha256 "ec7b132c9f8ae9765adf2a4a80b34404387c00ee0cb20d00573257dba3db47a3"

        def install
          bin.install "ybm"
        end
      end
    end

    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.23/ybm_0.1.23_linux_amd64.zip"
        sha256 "d88617d969af27bda7025c5eabda9927ffbacf6a181d268470de854c5971d039"

        def install
          bin.install "ybm"
        end
      end
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.23/ybm_0.1.23_linux_arm64.zip"
        sha256 "17b81cd7e02fb4f04f4a7412ef0eea259bc29eba4224c3d86d1a71e89513c5d5"

        def install
          bin.install "ybm"
        end
      end
    end
  end  
