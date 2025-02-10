#!/bin/bash

set -e

sudo apt install zenity -y 

if zenity --question --text="Voulez-vous installer les utilitaires Epitech ? ?"; then
    PASSWORD=$(zenity --password --title="Mot de passe requis")
    if [ -z "$PASSWORD" ]; then
        zenity --error --text="Aucun mot de passe fourni. L'installation a été annulée."
        exit 1
    fi

    ERROR_MSG=$(echo "$PASSWORD" | sudo -S bash -c 'wget -O - "https://raw.githubusercontent.com/nogebeat/deb-ubuntu-epitech/main/App-code/src/dumps" | sudo bash -s' 2>&1)

    if [ $? -eq 0 ]; then
        zenity --info --text="Le logiciel a été installé avec succès par Noge Productions."
    else
        zenity --error --text="${ERROR_MSG : 
Une erreur est survenue lors de l\'installation.}"
    fi
else
    zenity --info --text="L'installation des Logiciel a été annulée."
fi

