class DebeziumAT0rc12521814 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.1.8.14/debezium-server.tar.gz"
    version "0rc1.2.5.2-1.8.14"
    sha256 "4e2ef31daa4610895a61cf811bf68b471dcf63ae1280592deadb29b70db29bae"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end