class DebeziumAT0rc12522025101 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.10.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2025.10.1"
    sha256 "ed04bc0ca885e23734f849892b45f757e8d70c525b68ee295135eabe5602667f"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end