class DebeziumAT252202632b1773211471897 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.3.2-b1773211471897/debezium-server.tar.gz"
    version "2.5.2-2026.3.2-b1773211471897"
    sha256 "a69fb758164af4bb7ef8d86f3379931f1dc1527cd47d5ea61f75081843a24665"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end