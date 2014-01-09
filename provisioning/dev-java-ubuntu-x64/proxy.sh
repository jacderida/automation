#!/usr/bin/env bash

export http_proxy=$1
export https_proxy=http://$1/
export HTTP_PROXY=$1
export HTTPS_PROXY=http://$1/
if [ ! -e /etc/apt/apt.conf.d/80proxy ]; then
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
	echo "export https_proxy=$1" >> /etc/profile.d/setproxy.sh
	chmod +x /etc/profile.d/setproxy.sh

	echo "http_proxy=\"http://$1/\"" >> /etc/environment
	echo "https_proxy=\"http://$1/\"" >> /etc/environment
	echo "ftp_proxy=\"http://$1/\"" >> /etc/environment
	echo "no_proxy=\"localhost,127.0.0.1,localaddress,.localdomain.com\"" >> /etc/environment
	echo "HTTP_PROXY=\"http://$1/\"" >> /etc/environment
	echo "HTTPS_PROXY=\"http://$1/\"" >> /etc/environment
	echo "FTP_PROXY=\"http://$1/\"" >> /etc/environment
	echo "NO_PROXY=\"localhost,127.0.0.1,localaddress,.localdomain.com\"" >> /etc/environment
fi
