source ./config.sh

copyPlistToLaunchAgents(){
  cp $@ ~/Library/LaunchAgents
}

enableService(){
  launchctl load ~/Library/LaunchAgents/$@
}

echo 'enabling service...'
copyPlistToLaunchAgents $PLIST_FILENAME
launchctl load ~/Library/LaunchAgents/$PLIST_FILENAME