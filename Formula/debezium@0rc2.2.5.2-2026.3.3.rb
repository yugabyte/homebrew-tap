class DebeziumAT0rc2252202633 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc2.2026.3.3/debezium-server.tar.gz"
    version "0rc2.2.5.2-2026.3.3"
    sha256 "81c54b0ff98b961f216d57303e9d69ce6410884b708d397fa0ebc6938b401e52"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end