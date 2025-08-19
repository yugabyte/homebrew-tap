class DebeziumAT252202582 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.8.2/debezium-server.tar.gz"
    version "2.5.2-2025.8.2"
    sha256 "679f4112e1448d0eb254d5ec7c21bbb5fde6e36fb744a6bc90e1281a168359ed"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end