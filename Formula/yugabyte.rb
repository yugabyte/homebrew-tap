class Yugabyte < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://yugabyte.com"
  url "https://downloads.yugabyte.com/yugabyte-2.0.6.0-darwin.tar.gz"
  sha256 "96c23560845647c3dbff4e1923f4a5caec5fb34ccb2e50fccee4c19d5671f3fc"
  depends_on :java => "1.8"
  depends_on "python"
  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"yugabyted"
  end
  def caveats
    "Use yugabyted status to check the status of the database.
Use ysqlsh to drop into an SQL shell to interact with the database"
  end
  def post_install
    (var/"yugabyte_data").mkpath
    (prefix/"logs").mkpath
    (var/"log/yugabyte").mkpath
    if !(File.exist?((etc/"yugabyte.conf"))) then
      (etc/"yugabyte.conf").write yugabyte_conf
    end
  end
  def yugabyte_conf; <<~EOS
    {
    "tserver_webserver_port": 9000, 
    "master_rpc_port": 7100, 
    "webserver_port": 7200, 
    "master_webserver_port": 7000, 
    "bind_ip": "127.0.0.1", 
    "ycql_port": 9042, 
    "data_dir": "#{var}/yugabyte_data", 
    "ysql_port": 5433, 
    "log_dir": "#{var}/log/yugabyte", 
    "polling_interval": "5", 
    "tserver_rpc_port": 9100
    }
  EOS
  end
  plist_options :startup => true
  plist_options :manual => "yugabyted start --config #{HOMEBREW_PREFIX}/etc/yugabyte.conf"
  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{bin}/yugabyted</string>
        <string>start</string>
        <string>--config</string>
        <string>#{etc}/yugabyte.conf</string>
        <string>--daemon</string>
        <string>false</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
      <key>KeepAlive</key>
      <dict>
        <key>SuccessfulExit</key>
        <false/>
      </dict>
      <key>WorkingDirectory</key>
      <string>#{HOMEBREW_PREFIX}</string>
      <key>StandardErrorPath</key>
      <string>#{var}/log/yugabyte/yugabyted.log</string>
      <key>StandardOutPath</key>
      <string>#{var}/log/yugabyte/yugabyted.log</string>
      <key>HardResourceLimits</key>
      <dict>
        <key>NumberOfFiles</key>
        <integer>262144</integer>
      </dict>
      <key>SoftResourceLimits</key>
      <dict>
        <key>NumberOfFiles</key>
        <integer>262144</integer>
      </dict>
    </dict>
    </plist>
  EOS
  end

  test do
    system "#{prefix}/yugabyted", "help"
  end
end
