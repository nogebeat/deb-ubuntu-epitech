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

# wget -O - "http://dumpscript.epitest.eu" | sudo bash -s || erreur "L'installation du script a échoué."
sudo apt install -y git

cd /tmp

git clone https://github.com/Epitech/epitech-emacs.git

 cd epitech-emacs

./INSTALL.sh local

cd ~

sudo apt-get install -y gcc make cmake perl curl wget build-essential ocaml libncurses5-dev libncursesw5-dev git libx11-dev libxmu-dev libxi-dev libgl-dev libopenal-dev libxrandr-dev libudev-dev libglew-dev libjpeg-dev libalut-dev libcsfml-dev libqt5widgets5 libqt5websockets5 libqt5webengine5 libqt5opengl5

sudo apt --fix-broken install -y || erreur "La réparation des paquets brisés a échoué."

sudo DEBIAN_FRONTEND=noninteractive apt-get install -y emacs || erreur "L'installation d'Emacs a échoué."

sudo apt --fix-broken install -y || erreur "La réparation des paquets brisés a échoué."

sudo apt install emacs-gtk -y || erreur "L'installation de Emacs via Snap a échoué."
:
sudo apt --fix-broken install -y || erreur "La réparation des paquets brisés a échoué."

# wget -O discord.deb "https://discord.com/api/download?platform=linux&format=deb" || erreur "Impossible de creer le fichier discord.deb."

# wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" || erreur "Impossible de creer le fichier de google"

# sudo dpkg -i ./discord.deb || erreur "L'installation de Discord a échoué."

# sudo dpkg -i google-chrome-stable_current_amd64.deb || erreur "L'installation de Google a échoué."

sudo apt install -y docker.io docker-compose || erreur "L'installation de Docker a échoué."

sudo apt --fix-broken install -y || erreur "La réparation des paquets brisés a échoué."

sudo systemctl enable --now docker || erreur "L'activation de Docker a échoué."

sudo usermod -aG docker $USER || erreur "L'ajout de l'utilisateur au groupe docker a échoué."

docker --version || erreur "La vérification de la version de Docker a échoué."

wget -O - "https://raw.githubusercontent.com/nogebeat/deb-ubuntu-epitech/main/App-code/src/coding-style" > coding-style

chmod 777 coding-style

sudo cp ./coding-style /usr/bin || erreur "La copie de coding-style a échoué."

coding-style . . || erreur "L'exécution de coding-style a échoué."

ls


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
