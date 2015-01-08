#!/bin/bash

[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@"

for entry in icons/*
do
  echo "$entry"
  rm /usr/share/sni-qt/$entry
done
echo "Spotify icon removed without any errors!"
exit