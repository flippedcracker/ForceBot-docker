#!/bin/bash
##Install NadekoBot
#Cleanup Old
rm -rf /root/NadekoBot

#Get NadekoBot Version
git clone -q --branch=1.0 https://github.com/Kwoth/NadekoBot.git /root/NadekoBot
git checkout -qf 0df0eea6c0e1c451f0ebf4dffbb50a3ecd99eda5
git submodule update --init -recursive
dotnet restore

#Build NadekoBot
cd /root/NadekoBot
dotnet build

#Sync any new data files
rsync --ignore-existing -r /root/NadekoBot/data /config

#Remove data folder
rm -rf /root/NadekoBot/data
