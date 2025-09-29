class DebeziumAT0rc2252202593 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc2.2025.9.3/debezium-server.tar.gz"
    version "0rc2.2.5.2-2025.9.3"
    sha256 "bf8b0410a1162291db164762ff46eeb3f66667910be23c9cc68f1e9acf0583bb"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end