class DebeziumAT252202652 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.5.2/debezium-server.tar.gz"
    version "2.5.2-2026.5.2"
    sha256 "d708ed719b779c5ecba8e39bcc2df912a4e9a58d76e927dc7e2ee4721f8e69ac"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end