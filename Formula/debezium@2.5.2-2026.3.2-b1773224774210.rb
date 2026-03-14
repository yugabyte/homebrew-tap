class DebeziumAT252202632b1773224774210 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.3.2-b1773224774210/debezium-server.tar.gz"
    version "2.5.2-2026.3.2-b1773224774210"
    sha256 "d4a3929fa33276a8440e5c434e83875ab6e22976a10bf3a78b1ffec3537dbd5a"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end