class DebeziumAT0rc12522026111 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.11.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.11.1"
    sha256 "85cb436c49877e029df4863026af875c63462d394a8fd8a20140b3ea6865523c"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end