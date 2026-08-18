class DebeziumAT252202682 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.8.2/debezium-server.tar.gz"
    version "2.5.2-2026.8.2"
    sha256 "215d51cad6c4f9552f22097efc2f2868b642c218e80f5aef103dc5e69b5f2789"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end