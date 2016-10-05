#!/bin/sh
##Install NadekoBot
#Cleanup Existing
rm -rf /root/NadekoBot

#Get NadekoBot Version
git clone --branch=1.0 https://github.com/Kwoth/NadekoBot.git /root/NadekoBot
cd /root/NadekoBot
echo Checking Out
git checkout -qf 0df0eea6c0e1c451f0ebf4dffbb50a3ecd99eda5
git submodule update --init
echo Dotnet Restore
screen -d dotnet restore
sleep 60

#Build NadekoBot
echo Building
cd /root/NadekoBot/src/NadekoBot
screen -d dotnet build
sleep 60

#Move Data to user area
rsync --ignore-existing -r /root/NadekoBot/data /config

#Remove data folder
rm -rf /root/NadekoBot/data
