#!/bin/bash

cd /tmp

git clone https://github.com/Epitech/epitech-emacs.git

 cd epitech-emacs

./INSTALL.sh local

cd ~

if zenity --question --text="Voulez-vous installer les utilitaires coding-style et emacs ? ?"; then
    PASSWORD=$(zenity --password --title="Mot de passe requis")
    if [ -z "$PASSWORD" ]; then
        zenity --error --text="Aucun mot de passe fourni. L'installation a été annulée."
        exit 1
    fi

    echo "$PASSWORD" | sudo -S bash -c 'sudo apt install -y docker.io docker-compose
sudo systemctl enable --now docker

sudo groupadd docker
sudo usermod -aG docker $USER

docker --version

clear

tput setaf 1
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
tput sgr0'


    if [ $? -eq 0 ]; then
        zenity --info --text="Le logiciel a été installé avec succès par Noge Productions ."
    else
        zenity --error --text="Une erreur est survenue lors de l'installation de Docker."
    fi
else
    zenity --info --text="L'installation des Logiciel a été annulée."
fi

wget - "https://raw.githubusercontent.com/nogebeat/deb-ubuntu-epitech/main/App-code/src/message.txt"

zenity --text-info --title="Message de NOGE" --filename=message.txt
