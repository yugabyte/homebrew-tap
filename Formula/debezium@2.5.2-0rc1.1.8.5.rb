class DebeziumAT2520Rc1185 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.1.8.5/debezium-server.tar.gz"
    version "2.5.2-0rc1.1.8.5"
    sha256 "a0f2a2bb81575088ce58c8c433e4f97410c689ac99c1299546a33f8e7003c687"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end