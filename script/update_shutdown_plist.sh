DAEMON="com.shutdown.plist"
sudo vim /Library/LaunchDaemons/$DAEMON
sudo launchctl load -w /Library/LaunchDaemons/$DAEMON
