class YbVoyagerAT0rc2202633 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://software.yugabyte.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/brew/v0rc2.2026.3.3.tar.gz"
    sha256 "cead8e197c6c1ea31777c2e684c2428b1fe8e2ce90cb9d6d5e8752489739914d"
    version "0rc2.2026.3.3"
    license "Apache-2.0"
    depends_on "go@1.24" => :build
    depends_on "postgresql@17"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@0rc2.2.5.2-2026.3.3"
    
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