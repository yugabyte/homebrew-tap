class YbVoyagerAT180 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v1.8.0.tar.gz"
    sha256 "fde19030ab53bcb76afdb925598d950745f05c90a3e5d91e07d2ff9c6731c91b"
    version "1.8.0"
    license "Apache-2.0"
    depends_on "go" => :build
    depends_on "postgresql@14"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@2.5.2-1.8.0"
    
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
