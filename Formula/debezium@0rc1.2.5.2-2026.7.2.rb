class DebeziumAT0rc1252202672 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.7.2/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.7.2"
    sha256 "2e24017b9f0cc7557cda4b4946e17a75d2566337b4e9f05c214a540ac2e4c0e4"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end