#!/bin/sh
echo "Download"
mkdir /tmp/gmedia

TMPURL="https://raw.githubusercontent.com/quatmo/gmrender-volumio/main"
TMPPATH="tmp/gmedia"
sudo wget -O /$TMPPATH/gmediarender.tar.gz $TMPURL/gmediarender.tar.gz
sudo wget -O /$TMPPATH/gmrender.service.tar.gz $TMPURL/gmrender.service.tar.gz

sudo tar -xzvf /$TMPPATH/gmediarender.tar.gz --overwrite -C /
sudo tar -xzvf /$TMPPATH/gmrender.service.tar.gz --overwrite -C /
sync
sudo systemctl daemon-reload
sync
sudo systemctl enable gmrender.service
sudo systemctl restart gmrender.service
sudo systemctl status gmrender.service

#sudo systemctl stop gmrender.service
