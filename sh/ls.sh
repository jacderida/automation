#!/usr/bin/env bash

if [ ! -d "/opt/ls--" ]; then
    present_directory=$(pwd)
    cpan Term::ExtendedColor
    cd /opt
    git clone https://github.com/trapd00r/ls--.git
    cd ls--
    perl Makefile.PL
    make
    make install
    cd $present_directory
fi
