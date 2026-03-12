class DebeziumAT0rc1252202632 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.3.2/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.3.2"
    sha256 "2b0e66ce45d944166511263bf748584b6833d80d9953d91af13a3b82e08fc640"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end