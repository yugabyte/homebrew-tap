class DebeziumAT0rc2252186 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc2.1.8.6/debezium-server.tar.gz"
    version "0rc2.2.5.2-1.8.6"
    sha256 "a86f81e31922dcce18e38629632a099392df974faf4f4d26c3ec2aba267c2244"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end
