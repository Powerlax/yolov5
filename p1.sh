#!/bin/sh
sudo apt update
sudo apt install git-all
git clone --branch tutorial https://github.com/Powerlax/yolov5.git
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
sudo apt install python3
sudo apt install python3-pip
cd yolov5
pip3 install -r requirements.txt comet_ml
wget https://developer.download.nvidia.com/compute/cuda/12.2.2/local_installers/cuda-repo-debian11-12-2-local_12.2.2-535.104.05-1_amd64.deb
sudo dpkg -i cuda-repo-debian11-12-2-local_12.2.2-535.104.05-1_amd64.deb
sudo cp /var/cuda-repo-debian11-12-2-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo add-apt-repository contrib
sudo apt-get update
sudo apt-get -y install cuda
sudo apt-get install linux-headers-$(uname -r)
sudo add-apt-repository contrib
sudo apt-key del 7fa2af80
sudo dpkg -i cuda-repo-<distro>-X-Y-local_<version>*_x86_64.deb
sudo cp /var/cuda-repo-<distro>-X-Y-local/cuda-*-keyring.gpg /usr/share/keyrings/
wget https://developer.download.nvidia.com/compute/cuda/repos/debian11/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt-get --allow-releaseinfo-change update
sudo apt-get -y install cuda
sudo reboot
