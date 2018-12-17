source ./config.sh
echo 'restarting service...'
  launchctl unload ~/Library/LaunchAgents/$PLIST_FILENAME
  launchctl load ~/Library/LaunchAgents/$PLIST_FILENAME
