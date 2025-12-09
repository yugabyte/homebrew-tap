class DebeziumAT2522025121 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.12.1/debezium-server.tar.gz"
    version "2.5.2-2025.12.1"
    sha256 "c9b100547ee5b72fb351c6f40411dcea6270049e50675a924680a7a9dda59b47"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end