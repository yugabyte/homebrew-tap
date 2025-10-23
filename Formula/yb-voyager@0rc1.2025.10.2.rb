class YbVoyagerAT0rc12025102 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://software.yugabyte.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/brew/v0rc1.2025.10.2.tar.gz"
    sha256 "129c8a330a8a01c6f47434a9f0a9f34b08361b98ea085d9465e49ad2232c17c1"
    version "0rc1.2025.10.2"
    license "Apache-2.0"
    depends_on "go" => :build
    depends_on "postgresql@17"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@0rc1.2.5.2-2025.10.2"
    
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
        Dir.chdir("yb-voyager/config-templates") do
            (prefix/"opt/yb-voyager/config-templates").mkdir
            cp_r ".", prefix/"opt/yb-voyager/config-templates"
        end
    end

    test do
        system "#{bin}/yb-voyager", "version"
    end
end