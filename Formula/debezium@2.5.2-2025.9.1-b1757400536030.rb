class DebeziumAT252202591b1757400536030 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.9.1-b1757400536030/debezium-server.tar.gz"
    version "2.5.2-2025.9.1-b1757400536030"
    sha256 "bf0d7102b3efeeef41facb6b68a50db295a3eaf4432c9c77f8400bbe75cd5d0b"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end