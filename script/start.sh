#!/bin/bash

if [ -z "$(screen -list | grep "minecraft")" ]; then
    echo "[INFO] Starting Minecraft Server ..."
    cd minecraft
    screen -d -m -S minecraft java -jar -Xms2048M -Xmx2048M spigot.jar nogui
else
    echo "[INFO] Minecraft Instance already running!"
fi