#!/usr/bin/env bash

function install_python_packages() {
    apt-get -y install python-pip
    pip install virtualenv
    pip install pyrax
    pip install nose
    pip install rednose
    pip install nose-progessive
    pip install pygments
    pip install keyring
    pip install rackspace-novaclient
    pip install supernova
    pip install python-heatclient
    pip install i3-py
    pip install python-libxdo==0.1a
    pip install swiftly
    # The following are required to get Pyrax working correctly.
    pip install -U six
    cp /usr/local/lib/python2.7/dist-packages/six.py /usr/lib/python2.7/dist-packages
}

apt-get update
apt-get -y install git
apt-get -y install bzr
apt-get -y install subversion
apt-get -y install python-dev
install_python_packages
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
apt-get -y install pidgin
apt-get -y install pidgin-sipe
apt-get -y install libappindicator1
apt-get -y install pgadmin3
apt-get -y install graphviz
apt-get -y install sshpass
apt-get -y install htop
apt-get -y install xclip
apt-get -y install pylint
apt-get -y install mysql-client
apt-get -y install libmysqlclient-dev
apt-get -y install net-tools
apt-get -y install xdotool
apt-get -y install w3m
apt-get -y install mutt-patched
apt-get -y install mpd mpc ncmpcpp mpdscribble
apt-get -y install flac
