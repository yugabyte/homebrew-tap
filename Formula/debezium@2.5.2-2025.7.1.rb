class DebeziumAT252202571 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.7.1/debezium-server.tar.gz"
    version "2.5.2-2025.7.1"
    sha256 "d8ca3eed7b98a85a5ec2da0745869821d6443bfc8574a9bd941cf17699a0ee94"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end