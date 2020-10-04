#!/bin/bash

sudo apt-get -y update

sudo apt-get -y install coturn

sudo systemctl stop coturn

# set coturn to daemon mode
sudo mv /etc/default/coturn /etc/default/coturn.orig
curl -O -L https://raw.githubusercontent.com/token-cjg/hello_coturn/master/fixtures/coturn
sudo mv coturn /etc/default
