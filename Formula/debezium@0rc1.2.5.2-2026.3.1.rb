class DebeziumAT0rc1252202631 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.3.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.3.1"
    sha256 "54f26483248e3867ef768c56d4c420987b9c11d6276dfc1807cc3d606e5ee39d"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end