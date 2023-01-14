#!/bin/bash

if [ ! -d "minecraft_backups/" ]; then
    echo "[INFO] Creating minecraft_backups/ directory ..."
    mkdir minecraft_backups
fi

DATE=$(date '+%Y%m%d%H%M%S')

echo "[INFO] Creating minecraft_backups/$DATE directory ..."
mkdir minecraft_backups/$DATE

echo "[INFO] Backing up worlds ..."
cp -R minecraft/world/ minecraft_backups/$DATE/
cp -R minecraft/world_nether/ minecraft_backups/$DATE/
cp -R minecraft/world_the_end/ minecraft_backups/$DATE/