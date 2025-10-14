class DebeziumAT2522025101 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.10.1/debezium-server.tar.gz"
    version "2.5.2-2025.10.1"
    sha256 "20e717cd56515a3c759014fcdef1755dd40558e7a36f71eb3eb3ade61e66e4e3"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end