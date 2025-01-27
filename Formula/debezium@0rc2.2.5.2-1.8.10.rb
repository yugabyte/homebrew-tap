class DebeziumAT0rc22521810 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc2.1.8.10/debezium-server.tar.gz"
    version "0rc2.2.5.2-1.8.10"
    sha256 "4005fd967f5c15d1790cc2c560abea9daa7028d759a09382fb1128e79ae455ef"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end