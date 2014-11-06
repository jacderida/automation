#!/usr/bin/env bash

target_path="/opt"
if [ ! -d "$target_path/gradle-2.1" ]; then
    archive_path="/tmp/gradle-2.1-bin.zip"
    wget --output-document=$archive_path https://services.gradle.org/distributions/gradle-2.1-bin.zip
    unzip $archive_path -d $target_path
    ln -s $target_path/gradle-2.1/bin/gradle /usr/local/bin/gradle
    rm $archive_path
fi
