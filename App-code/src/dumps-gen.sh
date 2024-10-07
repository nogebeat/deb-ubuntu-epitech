#!/bin/bash 

sudo apt install git

cd ~

git clone https://github.com/nogebeat/deb-ubuntu-epitech.git

cd App-code

chmod 777 *

./script_ubuntu


cd ..

rm -ffr App-code 
