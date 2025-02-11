#!/bin/bash

clear

cd /tmp

git clone https://github.com/Epitech/epitech-emacs.git

 cd epitech-emacs

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
wget - "https://raw.githubusercontent.com/nogebeat/deb-ubuntu-epitech/main/App-code/src/message.txt"

zenity --text-info --title="Message de NOGE" --filename=message.txt
