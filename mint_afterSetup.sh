#! /bin/bash

#Update & Upgrade
sudo apt update && sudo apt upgrade

#Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo chmod +x ./google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
sudo rm ./google-chrome-stable_current_amd64.deb

#Install Discord
wget https://dl.discordapp.net/apps/linux/0.0.16/discord-0.0.16.deb
sudo chmod +x ./discord-0.0.16.deb
sudo apt install -y ./discord-0.0.16.debt_amd64.deb
sudo rm ./discord-0.0.16.deb

#Install VS Code
wget https://az764295.vo.msecnd.net/stable/ccbaa2d27e38e5afa3e5c21c1c7bef4657064247/code_1.62.3-1637137107_amd64.deb
sudo chmod +x ./code_1.62.3-1637137107_amd64.deb
sudo apt install -y ./code_1.62.3-1637137107_amd64.deb
sudo rm ./code_1.62.3-1637137107_amd64.deb

#install curl
sudo apt install curl

#Install Git
sudo apt install -y git

#Install VLC
sudo apt install -y vlc

#Install multimedia Codecs
sudo apt install -y ubuntu-restricted-extras

#Install git
sudo apt install -y git

#Install Nodejs
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

#Update npm
sudo npm install -g npm@latest
npm audit fix

#Install docker docker-compose
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  focal stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

#Autoload Docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

#Docker as a non-root user
sudo groupadd docker
sudo usermod -aG docker $USER

#Install Docker-Compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.1.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
