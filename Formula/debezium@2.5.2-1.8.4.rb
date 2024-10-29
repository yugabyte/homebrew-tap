class DebeziumAT252184 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.4/debezium-server.tar.gz"
    version "2.5.2-1.8.4"
    sha256 "518c580e758b0731b68cfa96ab357a9520ca1cd261839b62f773392c39b2bd98"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end