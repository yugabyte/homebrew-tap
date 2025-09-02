class DebeziumAT252202591 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.9.1/debezium-server.tar.gz"
    version "2.5.2-2025.9.1"
    sha256 "170d11758ded7bf0daeda3874e8c24a035ed4caac10c3a15c30cc947ce1c36dc"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end