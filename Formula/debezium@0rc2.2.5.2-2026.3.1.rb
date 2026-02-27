class DebeziumAT0rc2252202631 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc2.2026.3.1/debezium-server.tar.gz"
    version "0rc2.2.5.2-2026.3.1"
    sha256 "8843cf61db0a7593ade08c63b5125efbb0f618a7b0668de0c2d2ad1c9ee900e0"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end