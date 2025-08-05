class DebeziumAT252202581 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.8.1/debezium-server.tar.gz"
    version "2.5.2-2025.8.1"
    sha256 "c6fd6292ad99f342fd356109829af0fcad49e8c6a501796eb1e38a785762d779"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end