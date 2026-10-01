class DebeziumAT0rc1252202682 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.8.2/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.8.2"
    sha256 "c874d4942ac6efe19181cda9c7eca2753b3c1e0fb3c0af8fd92092676b6ddf76"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end