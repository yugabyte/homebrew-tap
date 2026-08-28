class DebeziumAT0rc1252202691 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.9.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.9.1"
    sha256 "24a1d9bd2f7a7b0e7a0a96ffe246893e37f26073aae78ee5f99effc4b47092f5"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end