#!/bin/bash

curl -O -L https://raw.githubusercontent.com/token-cjg/hello_drone/master/nginx.sh
curl -O -L https://raw.githubusercontent.com/token-cjg/hello_drone/master/coturn.sh

sudo chmod +x ./nginx.sh
sudo chmod +x ./coturn.sh

bash nginx.sh
bash coturn.sh
