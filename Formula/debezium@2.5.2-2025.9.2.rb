class DebeziumAT252202592 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.9.2/debezium-server.tar.gz"
    version "2.5.2-2025.9.2"
    sha256 "37cbd970cfaced072d26ba92c05960594e4f647d896d6bc8a3e580ac206b7805"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end