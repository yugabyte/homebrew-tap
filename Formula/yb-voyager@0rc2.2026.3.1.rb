class YbVoyagerAT0rc2202631 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://software.yugabyte.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/brew/v0rc2.2026.3.1.tar.gz"
    sha256 "ee436e34d1c43dd7041555776e36551c093639e4d95f24c39c1c4cd1e82b1b88"
    version "0rc2.2026.3.1"
    license "Apache-2.0"
    depends_on "go@1.24" => :build
    depends_on "postgresql@17"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@0rc2.2.5.2-2026.3.1"
    
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