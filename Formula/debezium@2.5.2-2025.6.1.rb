class DebeziumAT252202561 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.6.1/debezium-server.tar.gz"
    version "2.5.2-2025.6.1"
    sha256 "1ab322769ffdf6ab0e37d355fc0f900dd18303bf3a815b062022ec8a827449b7"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end