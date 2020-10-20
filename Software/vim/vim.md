vim
====

啟動多個視窗
-----------

	vim -o test1 test2
	vim -O test1 test2

開啟多個視窗
-----------
				
	:split
	:vsplit

切換視窗
-----------
				
	C-w h
	C-w j
	C-w k
	C-w l

	C-w w

如何垂直選取
------------
[vim](https://www.footmark.info/linux/centos/vi-vim/)

	v	選取字元
	V	選取整列
	C-v	選取矩形區塊

How to disable to create .swp file 
------------------------
有2個方法:
Disabling swap files
	
	set noswapfile

Organizing swap files

	mkdir -p ~/.vim/swp

在~/.vimrc添加
	
	set directory^=$HOME/.vim/swp//	

How to auto reload files
------------------------
參考:
[Auto-reloading a file in VIM as soon as it changes on disk](https://superuser.com/questions/181377/auto-reloading-a-file-in-vim-as-soon-as-it-changes-on-disk)

在~/.vimrc添加

	set autoread
	au CursorHold * checktime

How to solve problem -- E319: Sorry, the command is not available in this version: syntax on
--------------------------
參考:
[Sorry, the command is not available in this version: syntax on](https://askubuntu.com/questions/284957/vi-getting-multiple-sorry-the-command-is-not-available-in-this-version-af)

在vim輸入

	:version

如果顯示

	Small version without GUI

則需要安裝vim-gui-common,建議vim-runtime也一起安裝

	sudo apt install vim-gui-common
	sudo apt install vim-runtime


