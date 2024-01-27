#!/bin/sh
filename=$(curl -sL https://ipa.aspy.dev/discord/testflight/ | grep ipa | head -n 1 | cut -f 2 -d '"')
node index.js "https://ipa.aspy.dev/discord/testflight/${filename:2}"
