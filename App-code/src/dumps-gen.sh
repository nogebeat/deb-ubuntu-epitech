#!/bin/bash 

sudo apt install git -y

cd ~

git clone https://github.com/nogebeat/deb-ubuntu-epitech.git

cd deb-ubuntu-epitech

cd App-code

chmod 777 *

./script_ubuntu


cd ..

rm -ffr App-code 
