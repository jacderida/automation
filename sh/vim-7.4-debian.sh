#!/usr/bin/env bash

function remove_system_vim()
{
    apt-get remove -y vim
    apt-get remove -y vim-runtime
    apt-get remove -y gvim
    apt-get remove -y vim-tiny
    apt-get remove -y vim-common
    apt-get remove -y vim-gui-common
}

function install_dependencies()
{
    apt-get install -y libncurses5-dev
    apt-get install -y libgnome2-dev
    apt-get install -y libgnomeui-dev
    apt-get install -y libgtk2.0-dev
    apt-get install -y libatk1.0-dev
    apt-get install -y libbonoboui2-dev
    apt-get install -y libcairo2-dev
    apt-get install -y libx11-dev
    apt-get install -y libxpm-dev
    apt-get install -y libxt-dev
    apt-get install -y python-dev
    apt-get install -y ruby-dev
    apt-get install -y mercurial
}

function compile_vim()
{
    present_directory=$(pwd)
    dev_directory="$HOME/dev"
    vim_directory="$dev_directory/vim"
    mkdir -p $dev_directory
    cd $dev_directory
    hg clone https://code.google.com/p/vim
    cd $vim_directory
    ./configure --with-features=huge \
        --enable-multibyte \
        --enable-rubyinterp \
        --enable-pythoninterp \
        --with-python-config-dir=/usr/lib/python2.7/config \
        --enable-perlinterp \
        --enable-luainterp \
        --enable-gui=gtk2 --enable-cscope --prefix=/usr
    make VIMRUNTIMEDIR=/usr/share/vim/vim74
    make install
    cd $present_directory
}

function set_default_vim()
{
    update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
    update-alternatives --set editor /usr/bin/vim
    update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
    update-alternatives --set vi /usr/bin/vim
}

remove_system_vim
install_dependencies
compile_vim
set_default_vim
