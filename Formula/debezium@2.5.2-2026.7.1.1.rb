class DebeziumAT2522026711 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.7.1.1/debezium-server.tar.gz"
    version "2.5.2-2026.7.1.1"
    sha256 "1cb04a85d727b7b3c3cec18c08419fc55a0cc0e109e324a6415c34070287c694"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end