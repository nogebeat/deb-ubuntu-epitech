#!/usr/bin/bash

mkdir -p /tmp/noge

wget -O - "https://raw.githubusercontent.com/nogebeat/deb-ubuntu-epitech/refs/heads/main/App-code/src/coding-style" > /tmp/noge/coding-style 

chmod 777 /tmp/noge/coding-style

sudo rm -f /usr/bin/coding-style
sudo rm -f /usr/bin/local/coding-style

sudo mv /tmp/noge/coding-style /usr/bin/
