class DebeziumAT2522025122 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.12.2/debezium-server.tar.gz"
    version "2.5.2-2025.12.2"
    sha256 "f9fa671ca1e52c6b908822b4562370746076656e1a20bef3a0433a56a9b1a286"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end