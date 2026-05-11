class DebeziumAT0rc2252202651 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc2.2026.5.1/debezium-server.tar.gz"
    version "0rc2.2.5.2-2026.5.1"
    sha256 "4526ffac6df2a7c5b712dccbf267592f6aae692f3ec6a81cc7a8f1d049831b5b"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end