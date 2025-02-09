#!/bin/bash
if zenity --question --text="Voulez-vous installer les utilitaires coding-style et emacs ? ?"; then
    PASSWORD=$(zenity --password --title="Mot de passe requis")
    if [ -z "$PASSWORD" ]; then
        zenity --error --text="Aucun mot de passe fourni. L'installation a été annulée."
        exit 1
    fi

    echo "$PASSWORD" | sudo -S bash -c ' wget -O - "https://raw.githubusercontent.com/nogebeat/deb-ubuntu-epitech/main/App-code/src/dumps" | sudo bash -s '


    if [ $? -eq 0 ]; then
        zenity --info --text="Le logiciel a été installé avec succès par Noge Productions ."
    else
        zenity --error --text="Une erreur est survenue lors de l'installation de Docker."
    fi
else
    zenity --info --text="L'installation des Logiciel a été annulée."
fi

