class YbVoyagerAT0rc1202632 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://software.yugabyte.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/brew/v0rc1.2026.3.2.tar.gz"
    sha256 "a043267c0f0a2b3174ba0fb53c2b502c66daa0d71b3eac6ea5b271ad4c23b8d0"
    version "0rc1.2026.3.2"
    license "Apache-2.0"
    depends_on "go@1.24" => :build
    depends_on "postgresql@17"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@0rc1.2.5.2-2026.3.2"
    
    def install
        ENV.deparallelize
        Dir.chdir("yb-voyager") do
            system "go", "build", "-trimpath"
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