class YbVoyagerAT150 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/d0aa3100299760461489650208be7c49f7cd8974.tar.gz"
    sha256 "245a4ac3790feddbd67d1c0ebd149ca39565704ef601aca12ceac771236f57b8"
    version "1.5.0"
    license "Apache-2.0"
  
    depends_on "go" => :build
    depends_on "libpq"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@2.2.0-1.4.0"
  
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
