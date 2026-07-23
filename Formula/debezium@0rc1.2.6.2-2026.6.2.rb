class DebeziumAT0rc1262202662 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.6.2/debezium-server.tar.gz"
    version "0rc1.2.6.2-2026.6.2"
    sha256 "57a79feca29e5643932137942f59f8fe24d6814cbbead1863a74f38595d9c18b"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end