class DebeziumAT252181Rc1 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.1-rc1/debezium-server.tar.gz"
    version "2.5.2-1.8.1-rc1"
    sha256 "a15955fe6fc9486f5885a01839f6d0bd6b30cd50b4e919fbf21ee4c4c43dc4a7"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end