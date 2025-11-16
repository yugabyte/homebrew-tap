class DebeziumAT0rc12522025111 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.11.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2025.11.1"
    sha256 "8362350834e53b077cb00526ec867457b69bb3bd60ac1018741dc449130fb204"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end