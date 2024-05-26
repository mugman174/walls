#!/bin/sh
filename=$(curl -sL https://ipa.aspy.dev/discord/testflight/ | grep ipa | tail -n 2 | cut -f 2 -d '>' | cut -f 1 -d '<')
echo __DISCORD_VERSION=$(echo ${filename:1} | grep '[0-9]*' -oz | awk -F"\0" '{print $1 "_" $3}') >> $GITHUB_OUTPUT
node index.js "https://ipa.aspy.dev/discord/testflight/${filename:1}"
