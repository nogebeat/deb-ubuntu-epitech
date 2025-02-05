#!/usr/bin/bash

mkdir -p /tmp/noge

wget -O - "https://raw.githubusercontent.com/nogebeat/coding-style-checker/refs/heads/main/new-style.sh" > /tmp/noge/new-style

chmod 777 /tmp/noge/new-style

# sudo rm -f /usr/bin/coding-style
# sudo rm -f /usr/bin/local/coding-style

sudo mv /tmp/noge/new-style /usr/bin/
