class DebeziumAT252189 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.9/debezium-server.tar.gz"
    version "2.5.2-1.8.9"
    sha256 "d64d425905a8e1fd6eeb48f10725e5261df4a7e6d7932603db9a924eaf83e101"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end