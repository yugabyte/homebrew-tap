class DebeziumAT252202693 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.9.3/debezium-server.tar.gz"
    version "2.5.2-2026.9.3"
    sha256 "df28f59a9a6276172a93333172021ab1a4fea48a362f255cc7bac9098ada2345"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end