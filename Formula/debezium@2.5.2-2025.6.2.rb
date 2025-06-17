class DebeziumAT252202562 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.6.2/debezium-server.tar.gz"
    version "2.5.2-2025.6.2"
    sha256 "741b81031cf4a86c906fdba76d1104c09da0bc6ce12738b1f00c6e5d0fa6096a"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end