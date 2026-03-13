class DebeziumAT0rc2252202632 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc2.2026.3.2/debezium-server.tar.gz"
    version "0rc2.2.5.2-2026.3.2"
    sha256 "63397ec6ae318e9af2c53231b52292b60ddeebd33e923578ed8f6e23ea6e1e76"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end