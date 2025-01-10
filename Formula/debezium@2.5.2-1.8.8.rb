class DebeziumAT252188 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.8/debezium-server.tar.gz"
    version "2.5.2-1.8.8"
    sha256 "de66c2b33ea0e67288a12213f44d85ab4dc06e9ddfb0fbcbb6f91f0b8ac71a5f"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end