class DebeziumAT0rc12522025121 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.12.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2025.12.1"
    sha256 "3da29cf3f315ca6f2a941f79eefce45dd2124737df181ffbb720c2e99de9503d"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end