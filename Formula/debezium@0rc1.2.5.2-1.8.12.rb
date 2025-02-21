class DebeziumAT0rc12521812 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.1.8.12/debezium-server.tar.gz"
    version "0rc1.2.5.2-1.8.12"
    sha256 "966f2b11e51a3c0049c3cc4276c718eb3924ca31b84bbabd26af212d7551e53c"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end