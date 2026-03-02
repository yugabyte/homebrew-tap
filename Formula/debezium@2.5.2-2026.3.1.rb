class DebeziumAT252202631 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.3.1/debezium-server.tar.gz"
    version "2.5.2-2026.3.1"
    sha256 "100940f391990266dd1a7acc588e5fa01c663b8df51c4952d0cf9267c06c63cc"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end