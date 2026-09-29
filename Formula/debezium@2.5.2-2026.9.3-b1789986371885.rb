class DebeziumAT252202693b1789986371885 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.9.3-b1789986371885/debezium-server.tar.gz"
    version "2.5.2-2026.9.3-b1789986371885"
    sha256 "6ee17d318c53d62e1a756fda4e822d043293b597c396855f14acda506c4d58cf"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end