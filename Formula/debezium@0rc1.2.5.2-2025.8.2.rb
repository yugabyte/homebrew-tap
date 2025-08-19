class DebeziumAT0rc1252202582 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.8.2/debezium-server.tar.gz"
    version "0rc1.2.5.2-2025.8.2"
    sha256 "0c21518257531c50bdc47387e6a5699687964e84be6c91c923070219a9869a2b"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end