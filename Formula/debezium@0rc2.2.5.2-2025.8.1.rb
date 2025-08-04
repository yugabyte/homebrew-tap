class DebeziumAT0rc2252202581 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc2.2025.8.1/debezium-server.tar.gz"
    version "0rc2.2.5.2-2025.8.1"
    sha256 "c6d13c7edf42632d9a44826cb94125b920f73806a823e9855ea0a29a663d4177"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end