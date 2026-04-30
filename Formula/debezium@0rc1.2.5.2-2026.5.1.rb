class DebeziumAT0rc1252202651 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.5.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.5.1"
    sha256 "891d02c2d98fe4d2b6177e646e9e406d8d0f8a2a8e70e0c190eab4c7a5166b05"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end