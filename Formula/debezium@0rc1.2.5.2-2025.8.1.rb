class DebeziumAT0rc1252202581 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.8.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2025.8.1"
    sha256 "bb812629e85654632592151d2a163a077b92b911d120f81553d8451f1cc73c7e"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end