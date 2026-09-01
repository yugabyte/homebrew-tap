class DebeziumAT252202691 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.9.1/debezium-server.tar.gz"
    version "2.5.2-2026.9.1"
    sha256 "9153dc6fad24a0b7908dcffdd09f546665e653024fd501f97bd78b0dbe64ed4a"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end