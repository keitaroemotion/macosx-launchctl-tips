TODO execute junkisan script

sudo vim /Library/LaunchDaemons/com.startup.plist

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>EnvironmentVariables</key>
    <dict>
      <key>PATH</key>
      <string>/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:</string>
    </dict>
    <key>Label</key>
    <string>com.startup</string>
    <key>Program</key>
    <string>/Users/admin/Scripts/startup/startup.sh</string>
    <key>RunAtLoad</key>
    <true/>
    <key>KeepAlive</key>
    <false/>
    <key>LaunchOnlyOnce</key>        
    <true/>
    <key>StandardOutPath</key>
    <string>/tmp/startup.stdout</string>
    <key>StandardErrorPath</key>
    <string>/tmp/startup.stderr</string>
    <key>UserName</key>
    <string>admin</string>
    <key>GroupName</key>
    <string>admin</string>
    <key>InitGroups</key>
    <true/>
  </dict>
</plist>
sudo launchctl load -w /Library/LaunchDaemons/com.startup.plist
#sudo launchctl unload -w /Library/LaunchDaemons/com.startup.plist

https://medium.com/@fahimhossain_16989/adding-startup-scripts-to-launch-daemon-on-mac-os-x-sierra-10-12-6-7e0318c74de1
