#!/bin/sh
##Install NadekoBot
#Cleanup Existing
rm -rf /root/NadekoBot

#Get NadekoBot Version
echo Cloning
git clone --branch=1.0 https://github.com/Kwoth/NadekoBot.git 
cd NadekoBot
echo Checkout
git checkout -qf 0df0eea6c0e1c451f0ebf4dffbb50a3ecd99eda5
echo Submodule
git submodule update --init
echo Dotnet Restore
dotnet restore

#Build NadekoBot
echo Building
cd /root/NadekoBot/src/NadekoBot
dotnet build

#Remove data folder
#rm -rf /NadekoBot/data
