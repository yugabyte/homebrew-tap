class DebeziumAT2522026111 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.11.1/debezium-server.tar.gz"
    version "2.5.2-2026.11.1"
    sha256 "a03b2851283aa6a42811a6a559a3871424a8d5d91c998896d92c5dd44168dffd"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end