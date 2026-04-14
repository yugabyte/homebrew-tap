class DebeziumAT252202641 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.4.1/debezium-server.tar.gz"
    version "2.5.2-2026.4.1"
    sha256 "60a2d17e1c1fbf8912d5333c5bb5bfa4e95ca68c677a5c7147f1d71dd8f694de"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end