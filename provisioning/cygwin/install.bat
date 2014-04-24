mkdir c:\cygwin
mkdir c:\cygwin\packages
setup-x86_64.exe ^
--proxy 172.29.212.87:80 ^
--quiet-mode ^
--disable-buggy-antivirus ^
--root c:\cygwin ^
--local-package-dir c:\cygwin\packages ^
--site http://mirrors-uk.go-parts.com/cygwin ^
--packages automake1.14,binutils,cmake,curl,dos2unix,gcc-core,gcc-g++,git,libcrypt-devel,libevent-devel,libncursesw-devel,libuuid-devel,make,openssh,python,python-crypto,python-paramiko,ruby,subversion,util-linux,vim,wget
