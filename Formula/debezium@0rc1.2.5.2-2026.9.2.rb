class DebeziumAT0rc1252202692 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.9.2/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.9.2"
    sha256 "8908f4f8ab3e74c91025a73ea2cd7dece89d4a2b68063044cd355d6f746a3a78"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end