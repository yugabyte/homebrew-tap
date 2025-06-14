class YbVoyagerAT202561 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v2025.6.1.tar.gz"
    sha256 "8ea231009c55bd216c0e2e780879a0005d8fc200bafcbfb180f50f0cbf38bcf5"
    version "2025.6.1"
    license "Apache-2.0"
    depends_on "go" => :build
    depends_on "postgresql@17"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@2.5.2-2025.6.1"
    
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