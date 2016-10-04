#!/bin/bash
#Test Configuration
if test -f "/config/credentials.json"; then echo "Creds Exist"; else echo "No Credentials, Aborting!; fi

#Remove Built in
#rm /NadekoBot/credentials.json

#Adding Config file sym links
ln -s /config/credentials.json /NadekoBot/src/NadekoBot/credentials.json
ln -s /config/data /NadekoBot/src/NadekoBot/data
