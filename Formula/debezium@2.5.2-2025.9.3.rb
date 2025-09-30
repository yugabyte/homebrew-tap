class DebeziumAT252202593 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.9.3/debezium-server.tar.gz"
    version "2.5.2-2025.9.3"
    sha256 "dd23f764a44fb116aa8186540fbf517de6093e5e552b584212bcc8374d451176"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end