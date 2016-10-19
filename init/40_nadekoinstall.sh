#!/bin/bash
##Install NadekoBot
#Cleanup Old
rm -rf /mnt/user/appdata/forcebot/NadekoBot

#Get NadekoBot Version
if [[ "$VERSION" = dev ]]; then
        curl -s https://api.github.com/repos/flippedcracker/ForceBot/releases | grep browser_download_url | head -n 1 | cut -d '"' -f 4|wget -i - -O /root/NadekoBot.latest.zip
else
        curl -s https://api.github.com/repos/flippedcracker/ForceBot/releases/latest | grep browser_download_url | head -n 1 | cut -d '"' -f 4|wget -i - -O /root/NadekoBot.latest.zip
fi

unzip /mnt/user/appdata/forcebot/NadekoBot.latest.zip -d /mnt/user/appdata/forcebot/NadekoBot

#Sync any new data files
rsync --ignore-existing -r /mnt/user/appdata/forcebot/NadekoBot/data /config

#Remove data folder
rm -rf /mnt/user/appdata/forcebot/NadekoBot/data
