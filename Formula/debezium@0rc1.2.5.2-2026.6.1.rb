class DebeziumAT0rc1252202661 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.6.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.6.1"
    sha256 "de8a5c561999bee3fafe2565dadd05170adf9f32d3eb6b2903072de7367e2381"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end