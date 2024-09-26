#!/bin/bash


sudo apt-get install -y gcc make cmake perl curl wget build-essential ocaml libncurses5-dev libncursesw5-dev git libx11-dev libxmu-dev libxi-dev libgl-dev libopenal-dev libxrandr-dev libudev-dev libglew-dev libjpeg-dev libalut-dev libcsfml-dev libqt5widgets5 libqt5websockets5 libqt5webengine5 libqt5opengl5

sudo DEBIAN_FRONTEND=noninteractive apt-get install -y emacs 


sudo apt --fix-broken install -y 

sudo snap install emacs -y

unzip ./src/discord.zip

sudo dpkg -i ./discord.deb

# sudo dpkg -i ./src/algobox.deb

sudo apt install -y docker.io docker-compose

# snap install teams-for-linux

sudo systemctl enable --now docker

sudo groupadd docker
sudo usermod -aG docker $USER

docker --version

sudo cp ./src/coding-style /usr/bin

coding-style . .

sudo cp -r ./src/epitech-emacs /usr/local/bin/

sudo chmod +x /usr/local/bin/epitech-emacs/*

/usr/local/bin/epitech-emacs/INSTALL.sh local

cd ./src/epitech-emacs/

ls

sudo ./INSTALL.sh system

echo "alias emacs='emacs -nw'" | sudo tee -a /etc/bash.bashrc

source ~/.bashrc

tput setaf 1
echo "__**/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/CODING STYLE BY NOGE\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\**\*\*\*\*\**__"
echo " _           _"
echo "| |\\        | | NOGE"
echo "| |\\\       | |"
echo "| | \\\      | | EPITECH BENIN"
echo "| |  \\\     | |"
echo "| |   \\\    | | NOGE"
echo "| |    \\\   | |"
echo "| |     \\\  | | EPITECH DIGITAL SCHOOL"
echo "| |      \\\ | |"
echo "|_|       \\\|_| NOGE"
tput sgr0
