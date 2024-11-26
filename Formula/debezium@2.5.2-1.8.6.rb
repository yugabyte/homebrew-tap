class DebeziumAT252186 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.6/debezium-server.tar.gz"
    version "2.5.2-1.8.6"
    sha256 "7f5804529df0e1a782ff7426def81fcb0876784f0e3498bdf1ed1978308b9245"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end