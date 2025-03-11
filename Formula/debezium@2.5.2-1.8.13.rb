class DebeziumAT2521813 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.13/debezium-server.tar.gz"
    version "2.5.2-1.8.13"
    sha256 "c469d6d092309687678ab00082d1fba11558d4a6c0221ed6d6f01edf0542437b"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end