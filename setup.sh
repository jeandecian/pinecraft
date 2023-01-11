#!/bin/bash

echo "[INFO] Updating system ..."
sudo apt update
sudo apt upgrade

echo
echo "[INFO] Installing Git ..."
sudo apt install git

echo
echo "[INFO] Installing OpenJDK 17 ..."
sudo apt install openjdk-17-jre
echo "[INFO] Checking Java version ..."
java --version

echo
echo "[INFO] Installing Screen ..."
sudo apt install screen

echo
echo "[INFO] Installing UFW (Uncomplicated Firewall) ..."
sudo apt install ufw
#update-alternatives --list iptables
#sudo update-alternatives --set iptables /usr/sbin/iptables-legacy
echo "[INFO] Opening port 25565 ..."
sudo ufw allow 25565

if [ ! -d "minecraft/" ]; then
    echo
    echo "[INFO] Creating minecraft/ directory ..."
    mkdir minecraft
fi

echo
echo "[INFO] Retrieving BuildTools.jar ..."
cd minecraft
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
echo "[INFO] Checking BuildTools.jar ..."
ls -l BuildTools.jar