#!/bin/bash
#
#Tari Node installer

sudo apt update && sudo apt upgrade -y
sudo apt install git curl build-essential cmake clang pkg-config libssl-dev libsqlite3-dev sqlite3 unzip screen -y

mkdir $HOME/tari && cd $HOME/tari
wget -O tari.zip https://tari-binaries.s3.amazonaws.com/latest/linux/tari_base_node-ubuntu-18.04-x64-0.8.10-65fc65a-release.zip

unzip $HOME/tari/tari.zip && rm $HOME/tari/tari.zip

sudo $HOME/tari/install_tor.sh
sudo $HOME/tari/setup_tor_service
sudo $HOME/tari/tari_base_node --create-id

rm -rf $HOME/.tari/stibbons/db

screen -S node $HOME/tari/tari_base_node
