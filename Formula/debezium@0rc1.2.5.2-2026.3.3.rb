class DebeziumAT0rc1252202633 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.3.3/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.3.3"
    sha256 "593c19daaef183fa8e4d753e44007a22d83c4e85f90e12dad48e6fce16f91ae5"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end