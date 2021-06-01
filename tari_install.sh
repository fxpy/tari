#!/bin/bash
#
#Tari Node installer

sudo apt update && sudo apt upgrade -y
sudo apt install git curl build-essential cmake clang pkg-config libssl-dev libsqlite3-dev sqlite3 unzip screen -y

mkdir $HOME/tari && cd $HOME/tari
wget -O tari.zip https://tari-binaries.s3.amazonaws.com/current/linux/tari_base_node-ubuntu-18.04-x64-0.8.9-a07c1a3-release.zip

unzip tari.zip
rm tari.zip

sudo ./install_tor.sh
sudo ./setup_tor_service
sudo ./tari_base_node --create-id -y -y

screen -S node ./tari_base_node
