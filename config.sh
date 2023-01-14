#!/bin/bash

cd minecraft

echo "[INFO] Checking configurations ..."

EULA=$(grep "eula" eula.txt)
if [ $(echo $EULA | awk -F'=' '{print $2}') == "false" ]; then
    echo "eula.txt: $EULA (should be true)"
fi

MAXPLAYERS=$(grep "max-players" server.properties)
if [ $(echo $MAXPLAYERS | awk -F'=' '{print $2}') -gt 5 ]; then
    echo "server.properties: $MAXPLAYERS (should be 5)"
fi

VIEWDISTANCE=$(grep "view-distance" server.properties)
if [ $(echo $VIEWDISTANCE | awk -F'=' '{print $2}') -gt 6 ]; then
    echo "server.properties: $VIEWDISTANCE (should be 6)"
fi