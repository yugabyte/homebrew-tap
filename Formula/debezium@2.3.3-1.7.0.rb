class DebeziumAT233170 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/debezium/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.7.0/debezium-server.tar.gz"
    version "2.3.3-1.7.0"
    sha256 "5cb4aa08b6cb413ef70508416d60c0ad87bf20bb826e2390d6bd851b197dc0cd"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build
    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end
