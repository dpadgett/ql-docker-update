#!/bin/bash

if [ "$hostname" == "" ]; then
  echo "hostname not set"
  exit
fi

if [ "$username" == "" ]; then
  echo "username not set"
  exit
fi

rsync -avciz --progress /home/quake/ "$username"@"$hostname":.
ssh "$username"@"$hostname" ./restart-server.sh
