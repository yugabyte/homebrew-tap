class DebeziumAT2521891 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.9.1/debezium-server.tar.gz"
    version "2.5.2-1.8.9.1"
    sha256 "921f7d51d7948af978ce53cc8b1c56dcdf6a85d1db13581fcce761467349bb37"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end