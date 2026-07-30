class DebeziumAT0rc1252202681 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.8.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.8.1"
    sha256 "ce73d533c723a8270890b6cd13d401642f4bb868a50599b8d847d5bf0ad744be"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end