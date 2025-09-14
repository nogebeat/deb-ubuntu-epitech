#!/bin/bash

if yad --question --text="Voulez-vous installer les utilitaires Epitech ?" --title="Installation"; then
    PASSWORD=$(yad --entry --hide-text --title="Mot de passe requis" --text="Entrez votre mot de passe :")
    if [ -z "$PASSWORD" ]; then
        yad --error --text="Aucun mot de passe fourni. L'installation a été annulée."
        exit 1
    fi

    echo "🔄 Début de l’installation..."
    echo "$PASSWORD" | sudo -S bash -c 'wget -O - "https://raw.githubusercontent.com/nogebeat/deb-ubuntu-epitech/main/App-code/src/dumps" | sudo bash -s'
    echo "📌 Fin de l’exécution du script distant."

    if [ $? -eq 0 ]; then
        yad --info --text="Le logiciel a été installé avec succès par Noge Productions."
    else
        yad --error --text="Une erreur est survenue lors de l'installation."
    fi
else
    yad --info --text="L'installation des Logiciels a été annulée."
fi


