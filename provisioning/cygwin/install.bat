mkdir c:\cygwin
mkdir c:\cygwin\packages
setup-x86_64.exe ^
--quiet-mode ^
--disable-buggy-antivirus ^
--root c:\cygwin ^
--local-package-dir c:\cygwin\packages ^
--site http://mirrors-uk.go-parts.com/cygwin ^
--packages automake1.14,binutils,bsdtar,cmake,curl,dos2unix,gcc-core,gcc-g++,git,libcrypt-devel,libevent-devel,libncursesw-devel,libuuid-devel,make,openssh,python,python-crypto,python-paramiko,ruby,subversion,unzip,util-linux,vim,wget
