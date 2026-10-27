class DebeziumAT2522026102 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.10.2/debezium-server.tar.gz"
    version "2.5.2-2026.10.2"
    sha256 "1982ba546f8215f7e1a0732a4401124a4f89ad80913dedc2e005b7962b32f969"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end