class DebeziumAT0rc22522025112 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc2.2025.11.2/debezium-server.tar.gz"
    version "0rc2.2.5.2-2025.11.2"
    sha256 "dc56d206dc17779c4167bd77cef843315fa7e8a70548826ea4c8270b0cdc097a"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end