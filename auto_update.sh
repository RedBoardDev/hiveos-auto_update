#!/bin/bash

ACTUAL_VER=$(apt list hive | grep -Eo [0-9]+.[0-9]+-[0-9]+)
ADD_SYMBOL="@"
ACTUAL_VER+=$ADD_SYMBOL
ACTUAL_VER+=$(cat /hive-config/RepoVer)
echo "$ACTUAL_VER"
LAST_VER=$(curl 'https://the.hiveos.farm/api/v2/hive/versions?page=1&per_page=1&system_type=linux' | grep -Eo '[0-9]+.[0-9]+-[0-9]+@[0-9]+')
echo "$LAST_VER"

if [ "$ACTUAL_VER" != "$LAST_VER" ]; then
    echo "New MAJ !"
    selfupgrade && reboot
fi
