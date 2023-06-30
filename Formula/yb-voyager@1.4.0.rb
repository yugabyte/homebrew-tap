class YbVoyagerAT140 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v1.4.0.tar.gz"
    sha256 "a2087858093b6b9870842bb1885c9f9275b32b764de58c7b844b692ed37a0142"
    license "Apache-2.0"
  
    depends_on "go" => :build
    depends_on "libpq"
    depends_on "yugabyte/tap/debezium@2.2.0-1.4.0"
  
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
