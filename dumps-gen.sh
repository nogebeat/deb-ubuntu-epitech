#!/bin/bash

clear

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

sudo apt install git -y || erreur "L'installation de git a échoué."

cd /home/$(logname) || erreur "Impossible de se rendre dans le répertoire personnel de l'utilisateur."

git clone https://github.com/nogebeat/deb-ubuntu-epitech.git || erreur "Échec du clonage du dépôt Git."

cd deb-ubuntu-epitech/App-code || erreur "Impossible de se rendre dans le répertoire App-code."

chmod 777 * || erreur "Impossible de changer les permissions des fichiers."

./script_ubuntu || erreur "L'exécution de script_ubuntu a échoué."

tput setaf 2 
echo "Installation réussie !"

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
tput sgr0
