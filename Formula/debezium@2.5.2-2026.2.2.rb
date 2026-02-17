class DebeziumAT252202622 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.2.2/debezium-server.tar.gz"
    version "2.5.2-2026.2.2"
    sha256 "7edde75aa73b94e532121ea0c2e5a02713363abe53972839634f300a2b083e59"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end