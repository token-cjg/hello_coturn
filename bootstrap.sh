#!/bin/bash

curl -O -L https://raw.githubusercontent.com/token-cjg/hello_coturn/master/nginx.sh
curl -O -L https://raw.githubusercontent.com/token-cjg/hello_coturn/master/coturn.sh

sudo chmod +x ./nginx.sh
sudo chmod +x ./coturn.sh

bash nginx.sh
bash coturn.sh $1 $2 # pass ADMIN_USER and ADMIN_PASSWORD
