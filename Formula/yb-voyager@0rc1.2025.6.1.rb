class YbVoyagerAT0rc1202561 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v0rc1.2025.6.1.tar.gz"
    sha256 "fb5e426ec5a9cfa6eee85283a890c8b79303ee367601c649a437a11f630d9719"
    version "0rc1.2025.6.1"
    license "Apache-2.0"
    depends_on "go" => :build
    depends_on "postgresql@17"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@0rc1.2.5.2-2025.6.1"
    
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