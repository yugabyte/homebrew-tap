class DebeziumAT233165 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/debezium/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.6.5/debezium-server.tar.gz"
    version "2.3.3-1.6.5"
    sha256 "a3d6759e8b7fb61cedbd5bdfecf7dc1d4237a94aaa0e9a2a0ab54aa3d1eb3e2e"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build
    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end
