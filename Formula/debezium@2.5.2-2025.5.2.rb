class DebeziumAT252202552 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.5.2/debezium-server.tar.gz"
    version "2.5.2-2025.5.2"
    sha256 "b0390c6a7bf97a11b29689b0fe79b755fd7de44a73e9a1a805e9106050037063"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end