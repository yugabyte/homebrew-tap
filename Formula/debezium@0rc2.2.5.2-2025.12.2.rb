class DebeziumAT0rc22522025122 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc2.2025.12.2/debezium-server.tar.gz"
    version "0rc2.2.5.2-2025.12.2"
    sha256 "c1e9ac708a18caf6f71b8772720e4d74c1127da8a9021029b98aa1fe52c10d7e"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end