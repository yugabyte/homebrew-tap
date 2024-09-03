class DebeziumAT252180 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.0/debezium-server.tar.gz"
    version "2.5.2-1.8.0"
    sha256 "4fd6b37a09bca263756dc9d354e00c9eef436a737de1d83271f2424338845db5"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end