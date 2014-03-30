#!/usr/bin/env bash

base_command="wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - |"

if [ ! -e "/usr/bin/easy_install" ]; then
    if [ $(uname -s) == "CYGWIN_NT-6.1" ]
    then
        install_command="$base_command python"
        $install_command
    else
        sudo_install_command="$base_command sudo python"
        $sudo_install_command
    fi
fi
