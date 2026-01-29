class DebeziumAT0rc1252202621 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.2.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.2.1"
    sha256 "377864eb235bf9e23338f94cedf99d94834153ab9c7b8491e1088e105fe1e290"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end