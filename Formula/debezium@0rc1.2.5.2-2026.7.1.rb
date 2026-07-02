class DebeziumAT0rc1252202671 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.7.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.7.1"
    sha256 "29d5dab425e20a82d373ffda2704fa052fff6ecbf6b3ef9bb10462fa3ed38578"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end