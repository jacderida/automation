mkdir c:\cygwin
mkdir c:\cygwin\packages
setup-x86_64.exe ^
--quiet-mode ^
--disable-buggy-antivirus ^
--root c:\cygwin ^
--local-package-dir c:\cygwin\packages ^
--site http://mirrors-uk.go-parts.com/cygwin ^
--packages binutils,curl,gcc-core,git,libuuid-devel,make,openssh,python,python-crypto,python-paramiko,vim,wget
