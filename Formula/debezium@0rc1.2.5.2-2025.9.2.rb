class DebeziumAT0rc1252202592 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.9.2/debezium-server.tar.gz"
    version "0rc1.2.5.2-2025.9.2"
    sha256 "72d65f86ec08b11acf5de56371148ececba5023177b70140b8ac2d3074dc9215"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end