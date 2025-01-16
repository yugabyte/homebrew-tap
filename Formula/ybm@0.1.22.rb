class Ybm < Formula
    desc "YugabyteDB Managed CLI"
    homepage "https://github.com/yugabyte/ybm-cli"
    version "0.1.22"
    license "Apache-2.0"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.22/ybm_0.1.22_darwin_amd64.zip"
        sha256 "e50796130ad49998e30d0987428196f6d920a59f13cc346d89f6e1098b046da4"

        def install
          bin.install "ybm"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.22/ybm_0.1.22_darwin_arm64.zip"
        sha256 "9f7903bc4231e32e68e3b907baca76b40e408344425c879cb047d633f6980d4a"

        def install
          bin.install "ybm"
        end
      end
    end

    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.22/ybm_0.1.22_linux_amd64.zip"
        sha256 "62429156d514339da888ee820384499a4c34dd63eed1c3170c2f9836d68ad61b"

        def install
          bin.install "ybm"
        end
      end
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/yugabyte/ybm-cli/releases/download/v0.1.22/ybm_0.1.22_linux_arm64.zip"
        sha256 "35669f0f1115ef89f08624c50d72860559d572189567cb9fb9eaad7d294dc243"

        def install
          bin.install "ybm"
        end
      end
    end
  end  
