class DebeziumAT2522026101 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.10.1/debezium-server.tar.gz"
    version "2.5.2-2026.10.1"
    sha256 "03e6de1baf0c17d2a2a32582042704b78ee86d329560b2ae3f1d97972055c992"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end