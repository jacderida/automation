#!/usr/bin/env bash

install_command="wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - |"

if [ ! -e "/usr/bin/easy_install" ]; then
    if [ $(uname -s) == "CYGWIN_NT-6.1" ]
    then
        "$install_command python"
    else
        "$install_command sudo python"
    fi
fi
