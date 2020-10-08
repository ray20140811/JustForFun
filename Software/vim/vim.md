vim
====

E319: Sorry, the command is not available in this version: syntax on
--------------------------
參考:
[Sorry, the command is not available in this version: syntax on](https://askubuntu.com/questions/284957/vi-getting-multiple-sorry-the-command-is-not-available-in-this-version-af)

先輸入

	:version

如果顯示

	Small version without GUI

則需要安裝vim-gui-common,建議vim-runtime也一起安裝

	sudo apt install vim-gui-common
	sudo apt install vim-runtime

How to auto reload files
------------------------
參考:
[Auto-reloading a file in VIM as soon as it changes on disk](https://superuser.com/questions/181377/auto-reloading-a-file-in-vim-as-soon-as-it-changes-on-disk)

in ~/.vimrc

	set autoread
	au CursorHold * checktime
