class DebeziumAT233170Rc1 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/debezium/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.7.0-rc1/debezium-server.tar.gz"
    version "2.3.3-1.7.0-rc1"
    sha256 "1f095fc43f2b00ac0e49af6217c8181de5e0a5688b4904f5fa689b7ff21c8b9c"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build
    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end
