class DebeziumAT252185 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.5/debezium-server.tar.gz"
    version "2.5.2-1.8.5"
    sha256 "7c451845751f4c462f13eddb8529f37a7a1e894ebc2fd2600d84c2c09ba6acd4"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end