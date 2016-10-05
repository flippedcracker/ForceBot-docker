#!/bin/bash
#Test Configuration
if test -f "/config/credentials.json"; then echo "Creds Exist"; else echo "No Credentials, Aborting!; fi

#Adding Config file sym links
ln -s /config/credentials.json /root/NadekoBot/src/NadekoBot/credentials.json
ln -s /config/data /root/NadekoBot/src/NadekoBot/data
