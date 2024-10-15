class DebeziumAT252183 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.3/debezium-server.tar.gz"
    version "2.5.2-1.8.3"
    sha256 "ad49784c7065c9125f91565453127042b0f72e1fb3dff7bc94b5c05af328761f"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end