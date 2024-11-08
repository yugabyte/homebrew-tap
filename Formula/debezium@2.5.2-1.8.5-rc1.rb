class DebeziumAT252185Rc1 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.5-rc1/debezium-server.tar.gz"
    version "2.5.2-1.8.5-rc1"
    sha256 "43f7d8e39a0fe463c1d14850102b50f2d001ad8899e042e4736955c367f3b9a3"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end