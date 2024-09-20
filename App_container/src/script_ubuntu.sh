#!/bin/bash

# #!/bin/bash

sudo apt-get update -y

sudo apt-get install -y gcc emacs* make \
                        cmake \
                        perl \
                        gcc \
                        curl \
                        wget \
                        build-essential \
                        ocaml \
                        libncurses* \
                        git \
                        libx11-dev \
                        libxmu-dev \
                        libxi-dev \
                        libgl-dev \
                        libopenal-dev \
                        libxrandr-dev \
                        libudev-dev \
                        libglew-dev \
                        libjpeg-dev \
                        libalut-dev \
                        libcsfml* \
                        libqt5*


sudo dpkg -i algobox.deb

sudo apt install -y docker.io docker-compose

  snap install teams-for-linux

systemctl enable --now docker

# systemctl status docker

groupadd docker

sudo usermod -aG docker $USER

docker --version


sudo cp ./src/coding-style /usr/bin

coding-style . .

./src/epitech-emacs/INSTALL.sh local

cd src/epitech-emacs/

clear

ls

./INSTALL.sh local


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

echo "alias emacs='emacs -nw'" >> ~/.bashrc

source ~/.bashrc

# ./INSTALL.sh system
