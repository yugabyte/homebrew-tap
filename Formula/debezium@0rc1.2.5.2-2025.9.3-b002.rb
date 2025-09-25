class DebeziumAT0rc1252202593b002 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.9.3-b002/debezium-server.tar.gz"
    version "0rc1.2.5.2-2025.9.3-b002"
    sha256 "b0890c2e88f18cabe8258235283c9a5adb90c6d909e350ddade6016cc9f4779e"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end