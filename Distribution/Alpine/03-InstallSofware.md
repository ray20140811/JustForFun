Software
========

Docker
------

* Document (https://wiki.alpinelinux.org/wiki/Docker)
do follow as root

	alpine:~# apk update
	alpine:~# apk upgrade
	alpine:~# reboot
	alpine:~# cd /etc/apk
	alpine:~# vi repositories
	http://alpine.cs/nctu.edu.tw/v3.12/main
	http://alpine.cs/nctu.edu.tw/v3.12/community
	alpine:~# apk add docker
	alpine:~# rc-update add docker boot
	alpine:~# service docker start
	alpine:~# docker help 
	alpine:~# docker ps
	alpine:~# docker run hello-world
	alpine:~# free mem

* In WSL: If you see error so below, try to use su command first.
ERROR: Unable to lock database: Permission denied
ERROR: Failed to open apk database: Permission denied

	alpine:~# su 
	alpine:~# apk add vim

