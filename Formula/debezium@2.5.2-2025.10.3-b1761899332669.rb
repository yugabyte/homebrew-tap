class DebeziumAT2522025103b1761899332669 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.10.3-b1761899332669/debezium-server.tar.gz"
    version "2.5.2-2025.10.3-b1761899332669"
    sha256 "b19fe956015a85e2806112d11f66c73503b1d9becd5230550477902bbb083d86"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end