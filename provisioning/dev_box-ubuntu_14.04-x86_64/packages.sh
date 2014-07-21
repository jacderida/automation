#!/usr/bin/env bash

apt-get update
apt-get -y install python-pip
apt-get -y install git
apt-get -y install subversion
apt-get -y --force-yes install git-svn
add-apt-repository -y ppa:rabbitvcs/ppa && apt-get update
apt-get -y --force-yes install rabbitvcs-core rabbitvcs-nautilus3 rabbitvcs-cli
apt-get -y install curl
apt-get -y install xchat
apt-get -y install python-sphinx
apt-get -y install dos2unix
apt-get -y install gnome-shell
apt-get -y install exuberant-ctags
apt-get -y install libxml-xpath-perl
apt-get -y install libxml2-dev
apt-get -y install libxslt1-dev
apt-get -y install zlib1g-dev
apt-get -y install libncurses5-dev
apt-get -y install libevent-dev
apt-get -y install cmake
apt-get -y install smbfs
apt-get -y install tree
apt-get -y install libsdl-ttf2.0-0
apt-get -y install libvpx1
apt-get -y install openjdk-7-jre-headless
apt-get -y install openjdk-7-jre-headless:i386
apt-get -y install openjdk-7-jre
apt-get -y install openjdk-7-jre:i386
apt-get -y install icedtea-7-plugin
apt-get -y install ia32-libs
apt-get -y install pidgin
apt-get -y install pidgin-sipe
apt-get -y install libappindicator1
apt-get -y install pgadmin3
