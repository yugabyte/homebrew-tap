class DebeziumAT2522025111 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.11.1/debezium-server.tar.gz"
    version "2.5.2-2025.11.1"
    sha256 "45f129578ddad1020fe78ea4f7f83b5a38470b17a0e911dc3a237b75bd088e11"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end