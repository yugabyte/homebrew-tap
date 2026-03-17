class DebeziumAT252202632 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.3.2/debezium-server.tar.gz"
    version "2.5.2-2026.3.2"
    sha256 "a6ae7dbf215260c45b7e28954d817cc96c899bb2dcba552733a4272254f5aba6"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end