Install GUI
===========

	alpine login: root
	Password:
	alpine:~# setup-xorg-base
	alpine:~# apk add xf86-video-vesa
	alpine:~# apk add xf86-input-mouse
	alpine:~# apk add xf86-input-keyboard
	alpine:~# vi /etc/apk/repositories
	
	#/media/cdrom/apks
	http://alpine.cs.nctu.edu.tw/alpine/v3.12/main
	http://alpine.cs.nctu.edu.tw/alpine/v3.12/community
	#http://alpine.cs.nctu.edu.tw/alpine/edge/main
	#http://alpine.cs.nctu.edu.tw/alpine/edge/community
	#http://alpine.cs.nctu.edu.tw/alpine/edge/testing
	
	alpine:~# apk update
	alpine:~# apk add desktop-file-utils
	alpine:~# apk add gtk-engines
	alpine:~# apk add consolekit
	alpine:~# apk add gtk-murrine-engine
	alpine:~# apk add caja caja-extensions
	alpine:~# apk add marco
	alpine:~# apk add dbus dbus-x11
	alpine:~# apk add lxdm
	alpine:~# apk add udev
	alpine:~# apk add haicolor-icon-theme
	alpine:~# apk add sudo
	alpine:~# mate_pkgs=$(apk search mate -q | grep -v '\-dev' | grep -v '\-lang' | grep -v '\-doc')
	alpine:~# apk add $mate_pkgs

	alpine:~# adduser ray
	New password:
	Retype password:

	alpine:~# apk del mate-screensaver
	alpine:~# ln -s /usr/etc/xdg/menus /etc/xdg/menus
	alpine:~# apk add mate-screensaver
	alpine:~# ttfs=$(apk search -q ttf- | grep -v '\-doc')
	alpine:~# apk add $ttfs
	alpine:~# rc-update add lxdm 
	alpine:~# rc-update add dbus
	alpine:~# rc-update add udev
	alpine:~# rc-service dbus start
	alpine:~# rc-service udev start
	alpine:~# rc-service lxdm start
	
	
	
