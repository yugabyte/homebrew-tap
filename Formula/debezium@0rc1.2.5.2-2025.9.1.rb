class DebeziumAT0rc1252202591 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.9.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2025.9.1"
    sha256 "04ca1e60bdfd36e15ac7002202d51bf2da3b01b22cdfe059aefee14b0d2f0568"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end