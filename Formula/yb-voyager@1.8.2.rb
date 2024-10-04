class YbVoyagerAT182 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v1.8.2.tar.gz"
    sha256 "a0a39331311c98fa8e62b647c3187d6a7ba11c327a576379f7371dec0934c49f"
    version "1.8.2"
    license "Apache-2.0"
    depends_on "go" => :build
    depends_on "postgresql@16"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@2.5.2-1.8.2"
    
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