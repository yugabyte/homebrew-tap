class DebeziumAT233171 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/debezium/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.7.1/debezium-server.tar.gz"
    version "2.3.3-1.7.1"
    sha256 "047b34fc7f9eea9504bd3a90bad39891624f5a62c2f514fc5e5306975165de78"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build
    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end
