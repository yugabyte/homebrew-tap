class YbVoyagerAT171 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v1.7.1.tar.gz"
    sha256 "e71cffbd68ce999b3197f312644f15ac153927b3147f326b129f40974ac22b08"
    version "1.7.1"
    license "Apache-2.0"
  
    depends_on "go" => :build
    depends_on "libpq"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@2.3.3-1.7.1"
  
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
        cp_r "gather-assessment-metadata", prefix/"etc/yb-voyager/"
      end
    end
  
    test do
      system "#{bin}/yb-voyager", "version"
    end
  end

