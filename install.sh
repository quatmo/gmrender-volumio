#!/bin/sh
echo "Download"
mkdir /tmp/gmedia

TMPURL="https://raw.githubusercontent.com/quatmo/gmrender-volumio/main"
TMPPATH="tmp/gmedia"
sudo wget -O /tmp/gmedia/gmediarender.tar.gz https://raw.githubusercontent.com/quatmo/gmrender-volumio/main/gmediarender.tar.gz
sudo wget -O /tmp/gmedia/gmrender.service.tar.gz https://raw.githubusercontent.com/quatmo/gmrender-volumio/main/gmrender.service.tar.gz

sudo tar -xzvf /tmp/gmediarender.tar.gz -k -C /
sudo tar -xzvf /tmp/gmrender.service.tar.gz -k -C /

sudo systemctl daemon-reload
sudo systemctl enable gmrender.service
sync
sudo systemctl restart gmrender.service
sudo systemctl status gmrender.service

#sudo systemctl stop gmrender.service
