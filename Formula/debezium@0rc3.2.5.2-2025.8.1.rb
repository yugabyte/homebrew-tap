class DebeziumAT0rc3252202581 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc3.2025.8.1/debezium-server.tar.gz"
    version "0rc3.2.5.2-2025.8.1"
    sha256 "0cfd6664508938d9af4726f8632cf86bb789052085f3a957769771f951849200"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end