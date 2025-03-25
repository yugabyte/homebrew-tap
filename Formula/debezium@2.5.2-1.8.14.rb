class DebeziumAT2521814 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.14/debezium-server.tar.gz"
    version "2.5.2-1.8.14"
    sha256 "61ba591b351ad92e4d785dbf0c3c53ec1b5391f0d70f5568c58b5395313c0581"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end