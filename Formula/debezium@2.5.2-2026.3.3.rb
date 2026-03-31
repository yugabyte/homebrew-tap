class DebeziumAT252202633 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.3.3/debezium-server.tar.gz"
    version "2.5.2-2026.3.3"
    sha256 "9fc4162561f91207ccb5e737ec794c0c4df4b0558db38d32b48f3505356e495f"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end