class DebeziumAT2522025102 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.10.2/debezium-server.tar.gz"
    version "2.5.2-2025.10.2"
    sha256 "d04a1e15757d7cd59b270b292e4ddef98d9a59621e1ce70273237599f62f6ce9"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end