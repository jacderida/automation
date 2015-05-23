#!/usr/bin/env bash

echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
apt-get -y update
apt-get --allow-unauthenticated install sur5r-keyring
apt-get -y update
apt-get -y install i3
