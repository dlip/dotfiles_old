#!/bin/bash
#
# Change this to specify a different handbrake preset. You can list them by running: "HandBrakeCLI --preset-list"
#
PRESET=""
if [ -z "$1" ] ; then
	TRANSCODEDIR="."
else
TRANSCODEDIR="$1"
fi
find "$TRANSCODEDIR"/* -type f \( ! -iname "*.mp4" \) -exec bash -c 'HandBrakeCLI -s "1" --subtitle-burn "1" -i "$1" -o "${1%\.*}".mp4 --preset="Android High"' __ {} \;
