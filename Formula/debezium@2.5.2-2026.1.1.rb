class DebeziumAT252202611 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.1.1/debezium-server.tar.gz"
    version "2.5.2-2026.1.1"
    sha256 "f061a6ebd4cd45c17046537536b29d654d79130dba9716fd6fe7b74960ac7c04"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end