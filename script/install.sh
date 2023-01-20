#!/bin/bash

if [ $# -eq 0 ]; then
    VERSION="latest"
else
    VERSION=$1
fi

cd minecraft

echo "[INFO] Building version $VERSION ..."
java -Xmx1024M -jar BuildTools.jar --rev $VERSION
mv spigot-*.jar spigot.jar

if [ ! -f "eula.txt/" || ! -f "server.propertiers" ]; then
    echo
    echo "[INFO] Generating eula.txt and server.properties ..."
    java -Xms2048M -Xmx2048M -jar spigot.jar nogui

    echo
    echo "[INFO] Checking eula.txt and server.properties ..."
    ls -l eula.txt server.properties
fi