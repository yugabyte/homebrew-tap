class DebeziumAT0rc2252202682 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc2.2026.8.2/debezium-server.tar.gz"
    version "0rc2.2.5.2-2026.8.2"
    sha256 "f37f71e75db9cef5277b9f29d1570ca36e74b1d45a48584abcf5fd3cafbbba98"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end