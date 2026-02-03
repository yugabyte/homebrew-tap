class DebeziumAT252202621 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.2.1/debezium-server.tar.gz"
    version "2.5.2-2026.2.1"
    sha256 "1955a27835fe69147d462344ea190b6006bda535b275579a431143a48b77ffdd"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end