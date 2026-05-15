class DebeziumAT252202651 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.5.1/debezium-server.tar.gz"
    version "2.5.2-2026.5.1"
    sha256 "38095c531203c8e176f24ecb3ab80bfc71f61fd2a09cf72f5f582d53346ce533"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end