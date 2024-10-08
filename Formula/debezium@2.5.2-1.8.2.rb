class DebeziumAT252182 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.2/debezium-server.tar.gz"
    version "2.5.2-1.8.2"
    sha256 "b626f1ad18ecfcdc1b8bd305fdd9d8f304295b0da1a0b324f2a316d7da0430eb"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end