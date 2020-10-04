#!/bin/bash

sudo apt-get -y update

sudo apt-get -y install coturn

sudo systemctl stop coturn
