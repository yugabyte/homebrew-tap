class DebeziumAT0rc12522026121 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.12.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.12.1"
    sha256 "772aeb0590030154ec114757f2e0c842a95d696f7e239a3db228d6e0176daaa3"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end