class DebeziumAT252202552 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.5.2/debezium-server.tar.gz"
    version "2.5.2-2025.5.2"
    sha256 "d539af7121ab03d0c749edbf5e003bdd3ed6fa52eeae6f100a42bfe55a39019f"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end