class YbVoyagerAT172Rc1 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v1.7.2-rc1.tar.gz"
    sha256 "12bf9b19375588df76d1bc3008d7dd93c39944170ae446b2fc73f7c941448af7"
    version "1.7.2-rc1"
    license "Apache-2.0"
    depends_on "go" => :build
    depends_on "libpq"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@2.3.3-1.7.2-rc1"
    
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