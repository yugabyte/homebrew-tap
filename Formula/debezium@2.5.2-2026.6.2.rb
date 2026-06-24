class DebeziumAT252202662 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.6.2/debezium-server.tar.gz"
    version "2.5.2-2026.6.2"
    sha256 "5fb114966130d0be85dcc622883cce1702d4bb2229f800ff57591812d4473a98"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end