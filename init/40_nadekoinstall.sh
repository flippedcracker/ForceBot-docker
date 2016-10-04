#!/bin/bash
##Install NadekoBot

#Get NadekoBot Version
git clone --branch=1.0 https://github.com/Kwoth/NadekoBot.git /NadekoBot
git checkout -qf 0df0eea6c0e1c451f0ebf4dffbb50a3ecd99eda5
git submodule update --init -recursive
dotnet restore

#Build NadekoBot
cd /NadekoBot
dotnet build

#Remove data folder
rm -rf /NadekoBot/data
