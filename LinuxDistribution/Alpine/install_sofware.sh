#!/bin/ash

# For WSL Alpine: Use su first
#su
apk update
apk upgrade
apk cache clean

# Text Editor
#apk add ne
#apk add geany
#apk add vim 
#apk add emacs

# Source Version Control
#apk add git
#apk add subversion

# Midnight Commander
# apk add mc


## doom emacs
#git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
#~/.emacs.d/bin/doom add

## spacemacs


# Web Browser
# apk add w3m

# apk add wget
# apk add curl

# Shell
## zsh
# apk add zsh

## oh-my-zsh
#sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/add.sh -O -)"")"


# apk add tree

# apk add tmux

# VNC Server
# apk add vnc4server
# setup
#vncserver 			#Start VNC Server
#netstat -tulpn 	#Check VNC Server has started and The VNC Server default Port is 5901
					#Client Connect to VNC Server 192.168.56.1:5901

# apk add npm

# Node.js v14.x For Ubuntu
#curl -sL https://deb.nodesource.com/setup_14.x |  -E bash -
# apk-get add -y nodejs

# Node.js v14.x For Debian
#curl -sL https://deb.nodesource.com/setup_14.x | bash -
#apk-get add -y nodejs

# Node.js v12.x For Ubuntu
#curl -sL https://deb.nodesource.com/setup_12.x |  -E bash -
# apk-get add -y nodejs

# Node.js v12.x For Debian
#curl -sL https://deb.nodesource.com/setup_12.x | bash -
#apk-get add -y nodejs

## To add the Yarn package manager, run:
#curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg |  apk-key add -
#echo "deb https://dl.yarnpkg.com/debian/ stable main" |  tee /etc/apk/sources.list.d/yarn.list
# apk-get update &&  apk-get add yarn

# MicroController
# apk add arduino

# Medial Player
# apk add vlc


