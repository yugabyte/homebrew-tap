class DebeziumAT0rc1252202611 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.1.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.1.1"
    sha256 "0c9388add3f5d607e78a5ef5beadaa1ecc397c8ebd4db76b0c0eee796346be21"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end