#!/usr/bin/env bash

base_command="wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - |"

if [[ ! -e "/usr/bin/easy_install" ]]; then
    present_directory=$(pwd)
    cd /tmp
    wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O ez_setup.py
    if [[ $(uname -s) == CYGWIN_NT-* ]]
    then
        python ez_setup.py
    else
        sudo python ez_setup.py
    fi
    rm ez_setup.py
    rm setuptools-*.zip
    cd $present_directory
fi
