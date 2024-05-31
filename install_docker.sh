#!/bin/bash

sudo apt update -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update -y
apt-cache policy docker-ce -y
sudo apt install docker-ce -y
sudo usermod -aG docker ${USER}
su - ${USER}

#change the ${USER} at the next line if you want to allow other 
#user apart from root to use docker without root access
sudo usermod -aG docker ${USER}
sudo systemctl status docker


#made By ROBERTO
#thank you for using our script.
