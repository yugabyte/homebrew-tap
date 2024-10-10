class DebeziumAT252183Rc1 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.3-rc1/debezium-server.tar.gz"
    version "2.5.2-1.8.3-rc1"
    sha256 "625ff3bfa45196806f8355ca6e6abe86373a685134f13e2710236469af0d5933"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end