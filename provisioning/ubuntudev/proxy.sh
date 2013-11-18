#!/usr/bin/env bash

export http_proxy=$1
echo "Acquire::http::proxy \"http://$http_proxy/\";" >> /etc/apt/apt.conf.d/30proxy

echo "Acquire::http::proxy \"http://$http_proxy/\";" >> /etc/apt/apt.conf
echo "Acquire::https::proxy \"http://$http_proxy/\";" >> /etc/apt/apt.conf
echo "Acquire::ftp::proxy \"http://$http_proxy/\";" >> /etc/apt/apt.conf
echo "Acquire::socks::proxy \"http://$http_proxy/\";" >> /etc/apt/apt.conf

echo "Acquire::http::proxy \"http://$http_proxy/\";" >> /etc/apt/apt.conf.d/80proxy
echo "Acquire::https::proxy \"http://$http_proxy/\";" >> /etc/apt/apt.conf.d/80proxy
echo "Acquire::ftp::proxy \"http://$http_proxy/\";" >> /etc/apt/apt.conf.d/80proxy
echo "Acquire::socks::proxy \"http://$http_proxy/\";" >> /etc/apt/apt.conf.d/80proxy

echo "export http_proxy=$1" >> /etc/profile.d/setproxy.sh
chmod +x /etc/profile.d/setproxy.sh
