class DebeziumAT2521815 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.15/debezium-server.tar.gz"
    version "2.5.2-1.8.15"
    sha256 "4a05e1e1b41f558f80e3d9b9061707c3d4a44b21b3df033ade756843bbdbdbb2"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end