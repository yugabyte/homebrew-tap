class YbVoyagerAT0rc11813 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v0rc1.1.8.13.tar.gz"
    sha256 "b9d3f53d441abe305a2a097c71ee653cb8d3ddcf2ca7cf58619de1d2a44d9f9a"
    version "0rc1.1.8.13"
    license "Apache-2.0"
    depends_on "go" => :build
    depends_on "postgresql@17"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@0rc1.2.5.2-1.8.13"
    
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
        Dir.chdir("guardrails-scripts") do
            (prefix/"opt/").mkdir
            (prefix/"opt/yb-voyager").mkdir
            (prefix/"opt/yb-voyager/guardrails-scripts").mkdir
            cp_r ".", prefix/"opt/yb-voyager/guardrails-scripts"
        end
    end

    test do
        system "#{bin}/yb-voyager", "version"
    end
end