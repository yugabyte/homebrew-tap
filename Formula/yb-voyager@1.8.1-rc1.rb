class YbVoyagerAT181Rc1 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v1.8.1-rc1.tar.gz"
    sha256 "3572a48d21ce761defe5d36cebe04f6646624e7f5de8a23bda7ba76d080fee98"
    version "1.8.1-rc1"
    license "Apache-2.0"
    depends_on "go" => :build
    depends_on "postgresql@16"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@2.5.2-1.8.1-rc1"
    
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
        Dir.chdir("guardrail-scripts") do
            (prefix/"guardrail-scripts").mkdir
            cp_r ".", prefix/"guardrail-scripts"
        end
    end

    test do
        system "#{bin}/yb-voyager", "version"
    end
end