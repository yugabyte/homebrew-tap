class DebeziumAT252202692 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.9.2/debezium-server.tar.gz"
    version "2.5.2-2026.9.2"
    sha256 "692364e6967f0ccfe617050b3b33e78d993c6a7ca08c5824fb7adabfcdb38dee"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end