class YbVoyagerAT151 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v1.5.1.tar.gz"
    sha256 "57671bcd984587ecae02b2fdab86895e13157d2efeadd7933efa5240ed049421"
    version "1.5.1"
    license "Apache-2.0"
  
    depends_on "go" => :build
    depends_on "libpq"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@2.2.0-1.5.1"
  
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
