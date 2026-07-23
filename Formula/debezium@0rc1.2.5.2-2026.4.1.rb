class DebeziumAT0rc1252202641 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.4.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.4.1"
    sha256 "a29b1606adc34daa55df941102ff9b9c6170b0280999f32254d0e31fba4d8a11"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end