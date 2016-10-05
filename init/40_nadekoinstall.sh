#!/bin/sh
##Install NadekoBot
#Cleanup Existing
rm -rf /root/NadekoBot

#Get NadekoBot Version
git clone --branch=1.0 https://github.com/Kwoth/NadekoBot.git /root/NadekoBot
cd NadekoBot
echo Checking Out
git checkout -qf 0df0eea6c0e1c451f0ebf4dffbb50a3ecd99eda5
git submodule update --init
echo Dotnet Restore
cd src/NadekoBot
dotnet restore

#Build NadekoBot
echo Building
cd /root/NadekoBot/src/NadekoBot
dotnet build

#Remove data folder
#rm -rf /NadekoBot/data
