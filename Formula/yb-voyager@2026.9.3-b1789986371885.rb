class YbVoyagerAT202693b1789986371885 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://software.yugabyte.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/brew/v2026.9.3-b1789986371885.tar.gz"
    sha256 "7a1167f6a9067fb04d5b8fb8cf550845464322ff34b1e1309994782e687c0369"
    version "2026.9.3-b1789986371885"
    license "Apache-2.0"
    depends_on "go@1.24" => :build
    depends_on "postgresql@18"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@2.5.2-2026.9.3-b1789986371885"
    
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