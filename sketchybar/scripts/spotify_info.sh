#!/bin/bash

if ! osascript -e 'application "Spotify" is running'; then
  echo "Spotify is not running"
  exit 0
fi

state=$(osascript -e 'tell application "Spotify" to player state as string')
if [ "$state" = "paused" ]; then
  echo "Paused"
else
  song=$(osascript -e 'tell application "Spotify" to name of current track as string')
  artist=$(osascript -e 'tell application "Spotify" to artist of current track as string')
  sketchybar --set $NAME label="$song - $artist"
  echo "$song - $artist"
fi

