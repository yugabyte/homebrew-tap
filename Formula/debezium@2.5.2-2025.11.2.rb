class DebeziumAT2522025112 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.11.2/debezium-server.tar.gz"
    version "2.5.2-2025.11.2"
    sha256 "aca4a403d02770a1990696234cd1bf1dd843c1b9449d248f3cfc4cae406d2954"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end