class YbVoyagerAT0Rc2186 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v0rc2.1.8.6.tar.gz"
    sha256 "3b93d9d0ff30ce74c7de69f9e2f9b616f16aa5f97d7953a1f07ab0aa0a621644"
    version "0rc2.1.8.6"
    license "Apache-2.0"
    depends_on "go" => :build
    depends_on "postgresql@16"
    depends_on "sqlite"
    depends_on "yugabyte/tap/debezium@0rc2.2.5.2-1.8.6"
    
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