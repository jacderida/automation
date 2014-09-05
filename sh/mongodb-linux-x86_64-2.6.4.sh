#!/usr/bin/env bash

target_path="/opt/mongodb-linux-x86_64-2.6.4"
if [ ! -d $target_path ]; then
    archive_path="/tmp/mongodb-linux-x86_64-2.6.4.tgz"
	wget --output-document=$archive_path https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-2.6.4.tgz
    tar xzfv $archive_path -C /opt
    ln -s $target_path/bin/mongo /usr/local/bin/mongo
    ln -s $target_path/bin/mongod /usr/local/bin/mongod
    rm $archive_path
fi
