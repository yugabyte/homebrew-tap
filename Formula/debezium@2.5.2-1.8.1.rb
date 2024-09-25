class DebeziumAT252181 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.1/debezium-server.tar.gz"
    version "2.5.2-1.8.1"
    sha256 "e24a65f2e5ecdf0b4628ba4b1d7eca6a3d6e1532abefc9cc43c69a1e9acccd74"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end