class DebeziumAT252202671 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.7.1/debezium-server.tar.gz"
    version "2.5.2-2026.7.1"
    sha256 "4038b60af0c04c7f2a25c0326cd236f8298a0a743d0ca0bd32af5cbcd2aef091"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end