class DebeziumAT233172Rc1 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.7.2-rc1/debezium-server.tar.gz"
    version "2.3.3-1.7.2-rc1"
    sha256 "830cab8b4f4d80d5bdf9c2016d373fd9a0457fb1fe04b4723c267dd7b8e34aba"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end