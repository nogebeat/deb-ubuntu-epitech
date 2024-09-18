#!/bin/bash

# #!/bin/bash

sudo apt-get update -y

sudo apt-get install -y emacs*

sudo apt install -y docker.io docker-compose curl

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

sudo ./INSTALL.sh local


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

echo "alias emacs='emacs -nw'" >> ~/bashrc

# ./INSTALL.sh system
