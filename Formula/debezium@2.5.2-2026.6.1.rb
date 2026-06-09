class DebeziumAT252202661 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.6.1/debezium-server.tar.gz"
    version "2.5.2-2026.6.1"
    sha256 "a658d51110c3f20b4c23d0b61c202c5aab5dd476ab581eecbbad355162ead9a5"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end