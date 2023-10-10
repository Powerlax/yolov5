#!/bin/sh
sudo apt update
sudo apt install git-all
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
sudo apt install python3
sudo apt install python3-pip
