class DebeziumAT233165Rc1 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/debezium/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.6.5-rc1/debezium-server.tar.gz"
    version "2.3.3-1.6.5-rc1"
    sha256 "30fa42463d5403ff80b9b64e0c78542953251d66e825933104ed6291f6e4331f"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build
    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end
