class DebeziumAT0rc1252202652 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.5.2/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.5.2"
    sha256 "d511cc9eb2c6a11590d4fa6b20c60e6cfe3c28521e52e607182627637fd16fef"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end