#!/bin/bash

set -e

function erreur {
    tput setaf 1
    echo "Erreur : $1"
    echo "Veillez contactez l'Editeur "
    echo "Email : james.gbetchedji@epitech.eu"
    echo "Tel : +22956549199"
    tput sgr0
    exit 1
}

sudo apt-get install -y gcc make cmake perl curl wget build-essential ocaml libncurses5-dev libncursesw5-dev git libx11-dev libxmu-dev libxi-dev libgl-dev libopenal-dev libxrandr-dev libudev-dev libglew-dev libjpeg-dev libalut-dev libcsfml-dev libqt5widgets5 libqt5websockets5 libqt5webengine5 libqt5opengl5

sudo apt --fix-broken install -y || erreur "La réparation des paquets brisés a échoué."

sudo DEBIAN_FRONTEND=noninteractive apt-get install -y emacs || erreur "L'installation d'Emacs a échoué."

sudo apt --fix-broken install -y || erreur "La réparation des paquets brisés a échoué."

sudo snap install emacs -y || erreur "L'installation de Emacs via Snap a échoué."

sudo apt --fix-broken install -y || erreur "La réparation des paquets brisés a échoué."

unzip ./src/discord.zip || erreur "Impossible de décompresser discord.zip."

sudo dpkg -i ./discord.deb || erreur "L'installation de Discord a échoué."

sudo apt install -y docker.io docker-compose || erreur "L'installation de Docker a échoué."

sudo apt --fix-broken install -y || erreur "La réparation des paquets brisés a échoué."

sudo systemctl enable --now docker || erreur "L'activation de Docker a échoué."

sudo groupadd docker || erreur "La création du groupe docker a échoué."
sudo usermod -aG docker $USER || erreur "L'ajout de l'utilisateur au groupe docker a échoué."

docker --version || erreur "La vérification de la version de Docker a échoué."

sudo cp ./src/coding-style /usr/bin || erreur "La copie de coding-style a échoué."

coding-style . . || erreur "L'exécution de coding-style a échoué."

sudo cp -r ./src/epitech-emacs /usr/local/bin/

sudo chmod +x /usr/local/bin/epitech-emacs/*

/usr/local/bin/epitech-emacs/INSTALL.sh local

cd ./src/epitech-emacs/

ls

sudo ./INSTALL.sh system

echo "alias emacs='emacs -nw'" | sudo tee -a /etc/bash.bashrc || erreur "La configuration d'alias Emacs a échoué."

source ~/.bashrc || erreur "Le rechargement de .bashrc a échoué."

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