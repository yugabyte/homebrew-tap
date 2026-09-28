class DebeziumAT0rc1252202693 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.9.3/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.9.3"
    sha256 "e58bafdcb2b0ce8856b21887de6fc53c5058651d51e250ce375713381b44b756"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end