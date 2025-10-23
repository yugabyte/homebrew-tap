class DebeziumAT0rc12522025102 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.10.2/debezium-server.tar.gz"
    version "0rc1.2.5.2-2025.10.2"
    sha256 "9025c61a6687c8932928763bfdce1706b1f9c98c616bd14443120d7f9763d87b"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end