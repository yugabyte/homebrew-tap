class DebeziumAT0rc1252189 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.1.8.9/debezium-server.tar.gz"
    version "0rc1.2.5.2-1.8.9"
    sha256 "b6c4ba80533809c664a71e7cba7a5506756518557da45f194799becfc829bfdd"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end