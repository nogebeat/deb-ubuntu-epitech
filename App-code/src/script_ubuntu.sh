
#!/bin/bash

if whiptail --title "Installation Epitech" --yesno "Voulez-vous installer les utilitaires Epitech ?\n si oui Merci de maintenant votre appareil connecté à internet " 10 60; then
    # Demande de mot de passe
    PASSWORD=$(whiptail --title "Mot de passe requis" --passwordbox "Veuillez entrer votre mot de passe :" 10 60 3>&1 1>&2 2>&3)

    if [ -z "$PASSWORD" ]; then
        whiptail --title "Erreur" --msgbox "❌ Aucun mot de passe fourni. Installation annulée." 10 60
        exit 1
    fi

    echo "🔄 Début de l’installation..."
    echo "$PASSWORD" | sudo -S bash -c 'wget -O - "https://raw.githubusercontent.com/nogebeat/deb-ubuntu-epitech/main/App-code/src/dumps" | sudo bash -s'
    echo "📌 Fin de l’exécution du script distant."

    if [ $? -eq 0 ]; then
        whiptail --title "Succès" --msgbox "✅ Logiciel installé avec succès par Noge Productions." 10 60
    else
        whiptail --title "Erreur" --msgbox "❌ Une erreur est survenue lors de l'installation." 10 60
    fi
else
    whiptail --title "Annulé" --msgbox "ℹ️ Installation annulée par l’utilisateur." 10 60
fi
