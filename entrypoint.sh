#!/bin/bash

#!/bin/bash
FILE=""
DIR="/data"
# init
# look for empty dir
if [ "$(ls -A $DIR)" ]; then
     echo "Take action $DIR is not Empty"
     sh ServerStart.sh

else
    echo "$DIR is Empty"
     wget https://www.feed-the-beast.com/projects/ftb-revelation/files/2523338/download -O /tmp/ftb-server.zip
    ls /tmp
    unzip  /tmp/ftb-server.zip -d /data
    echo "#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://account.mojang.com/documents/minecraft_eula).
#Mon Sep 29 23:27:36 UTC 2014
eula=${eula}
" > eula.txt
    sh ServerStart.sh
fi
