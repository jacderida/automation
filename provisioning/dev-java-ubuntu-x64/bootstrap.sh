#!/usr/bin/env bash

function initial_setup
{
    apt-get update
    mkdir /tmp/vagrant
    chown -R vagrant /tmp/vagrant
}

function install_apt_packages
{
    apt-get -y install python-pip
    apt-get -y install git
    apt-get -y install subversion
    apt-get -y --force-yes install git-svn
    apt-get -y install vim-gnome
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
}

initial_setup
install_apt_packages
