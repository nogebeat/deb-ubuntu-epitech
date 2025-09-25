#!/bin/bash

clear

cd /tmp

git clone https://github.com/Epitech/epitech-emacs.git

 cd epitech-emacs

./INSTALL.sh local

if  [ "$(id -u)" -eq 0 ] then
    ./INSTALL.sh system
fi

wget - "https://raw.githubusercontent.com/nogebeat/deb-ubuntu-epitech/main/App-code/src/message.txt"

cat message.txt

rm message.txt

cd ~/
