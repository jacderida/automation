#!/usr/bin/env bash

if [ ! -f /usr/bin/mono ]; then
	apt-get update
	apt-get -y install apache2
	apt-get -y install autoconf automake libtool g++ gettext libglib2.0-dev libpng12-dev libfontconfig1-dev
	apt-get -y install mono-gmcs
	apt-get -y install git
	apt-get -y install apache2-threaded-dev
	apt-get -y install make
	apt-get -y install libx11-dev
	cd /opt
	mkdir mono-3.0
	cd /opt/mono-3.0
	git clone git://github.com/mono/mono.git
	git clone git://github.com/mono/xsp.git
	git clone git://github.com/mono/libgdiplus.git
	git clone git://github.com/mono/mod_mono.git

	# Build and install libgdiplus
	cd /opt/mono-3.0/libgdiplus
	./autogen.sh --prefix=/usr
	make
	make install

	# Build and install Mono
	cd /opt/mono-3.0/mono/
	./autogen.sh --prefix=/usr
	make
	make install

	# Build and install xsp
	cd /opt/mono-3.0/xsp
	./autogen.sh --prefix=/usr
	make
	make install

	# Build and install mod_mono
	cd /opt/mono-3.0/mod_mono
	./autogen.sh --prefix=/usr
	make
	make install

	# This is necessary for restoring NuGet packages.
	# See http://monomvc.wordpress.com/2012/03/06/nuget-on-mono/
	mozroots --import --sync

	echo "export PATH=/opt/mono/bin:$PATH" >> ~/mono.sh
	sudo cp ~/mono.sh /etc/profile.d/
	sudo chmod +x /etc/profile.d/mono.sh
fi
