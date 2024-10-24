class DebeziumAT252184Rc1 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.4-rc1/debezium-server.tar.gz"
    version "2.5.2-1.8.4-rc1"
    sha256 "c9d81680ecce5942ad757494715d9f49acaea8e783faae945f3a04a8fdb10670"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end