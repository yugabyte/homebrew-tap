class DebeziumAT0rc32522025122 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc3.2025.12.2/debezium-server.tar.gz"
    version "0rc3.2.5.2-2025.12.2"
    sha256 "4a4915aeb859d9f778c6997f2b1af350e5f665ddeabea90366ece6df3775db45"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end