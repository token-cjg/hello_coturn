#!/bin/bash

sudo apt-get -y update

# install coturn package
sudo apt-get -y install coturn

# install sqlite
sudo apt-get -y install sqlite3 libsqlite3-dev

# stop coturn
sudo systemctl stop coturn

# set coturn to daemon mode
sudo mv /etc/default/coturn /etc/default/coturn.orig
curl -O -L https://raw.githubusercontent.com/token-cjg/hello_coturn/master/fixtures/coturn
sudo mv coturn /etc/default

# coturn configuration
sudo mv /etc/turnserver.conf /etc/turnserver.conf.original
curl -O -L https://raw.githubusercontent.com/token-cjg/hello_coturn/master/fixtures/turnserver.conf
sudo mv turnserver.conf /etc

# coturn user
sudo turnadmin -a -u $1 -r $3 -p $2

# turn coturn on
sudo systemctl start coturn
