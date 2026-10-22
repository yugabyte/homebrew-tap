class DebeziumAT0rc12522026102 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.10.2/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.10.2"
    sha256 "b73f563d662a9d64b8a66369636a2077a57c2f1ead76e7e3e43e64c24c117d58"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end