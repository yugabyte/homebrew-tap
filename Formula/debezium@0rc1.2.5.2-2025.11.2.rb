class DebeziumAT0rc12522025112 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.11.2/debezium-server.tar.gz"
    version "0rc1.2.5.2-2025.11.2"
    sha256 "c2269be64e912c89208e7da3ff1c3b2f6a106b494da9c761520ce3e52c0b3b4c"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end