class YbVoyagerAT160Rc2 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v1.6.0-rc2.tar.gz"
    sha256 "091e62273b5acad22d1edf39b3c56fc8e18536421d5dc4dd22c7267c34f42e57"
    version "1.6.0-rc2"
    license "Apache-2.0"
  
    depends_on "go" => :build
    depends_on "libpq"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@2.2.0-1.6.0-rc2"
  
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

