class DebeziumAT0rc12522026101 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.10.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.10.1"
    sha256 "32e99de7b7bf482ed44c0d37c0b665846b75d6eba6335f1157e2539327114bbb"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end