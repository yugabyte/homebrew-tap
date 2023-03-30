class YbVoyagerAT120 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v1.2.0.tar.gz"
    sha256 "8394d86f826cc79962264ece9720581cbe342610eeb9f407a91e81a2d9bbee3d"
    license "Apache-2.0"
  
    depends_on "go" => :build
    depends_on "libpq"
  
    def install
      ENV.deparallelize
      Dir.chdir("yb-voyager") do
        system "go", "build"
        bin.install "yb-voyager"
      end
    end
  
    test do
      system "#{bin}/yb-voyager", "version"
    end
  end