class YbVoyagerAT165 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v1.6.5.tar.gz"
    sha256 "53877ee3fec667a05cb3511550c089a6011210a4d3e0a16af0f513787bef04f1"
    version "1.6.5"
    license "Apache-2.0"
  
    depends_on "go" => :build
    depends_on "libpq"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@2.3.3-1.6.5"
  
    def install
      ENV.deparallelize
      Dir.chdir("yb-voyager") do
        system "go", "build"
        bin.install "yb-voyager"
      end
      Dir.chdir("yb-voyager/src/srcdb/data") do
        (prefix/"etc/").mkdir
        (prefix/"etc/yb-voyager/").mkdir
        cp_r "pg_dump-args.ini", prefix/"etc/yb-voyager/pg_dump-args.ini"
      end
    end
  
    test do
      system "#{bin}/yb-voyager", "version"
    end
  end

