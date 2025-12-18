class DebeziumAT0rc12522025122 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.12.2/debezium-server.tar.gz"
    version "0rc1.2.5.2-2025.12.2"
    sha256 "6b4de0698c7e5ac905ae875e89b929ae885f73979846c5917424fe27b2bf3d83"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end