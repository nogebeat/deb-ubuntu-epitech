#!/usr/bin/bash

mkdir -p /tmp/noge

wget -O - "https://raw.githubusercontent.com/nogebeat/coding-style-checker/refs/heads/main/new-style.sh" > /tmp/noge/coding-style 

chmod 777 /tmp/noge/coding-style

sudo rm -f /usr/bin/coding-style
sudo rm -f /usr/bin/local/coding-style

sudo mv /tmp/noge/coding-style /usr/bin/
