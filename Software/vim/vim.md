vim
====

Cygwin
------

   ~/.vimrc not working
  cp ~/.vimrc ~/.virc

捲動螢幕
----------

    C-f 往前滾動一整屏
    C-b 往後滾動一整屏
    C-d 往前(下)滾動半屏
    C-u 往後(上)滾動半屏
    C-e 向上捲動一行
    C-y 向下捲動一行
    

螢幕重新調整位置
----------------

	 z-<enter> 將游標移到屏幕頂端並滾動屏幕
	 z-.       將游標移到屏幕中心並滾動屏幕
	 z--       將游標移到屏幕底端並滾動屏幕

在螢幕中移動
----------------

    H 移到第一個字(螢幕頂端的第一行)
    M 移到螢幕中間那一行
    L 移到螢幕的底端
    nH 移到螢幕頂端往下n行
    nL 移到螢幕底端往上n行

依照行移動
--------

    ENTER 移到下一行的第一個字元
    + 移到下一行的第一個字元
    - 移到上一行的第一個字元

在目前這一行移動
-------------
    
    ^ 移至目前這一行的第一個非空白字元
    n| 移至目前這一行的第n個字
    0 移至目前這行的第一個位置

依照文字區塊移動
-------------

    e 移到單字的結尾
    E 移到單字的結尾(含標點符號)
    ( 移到目前句子的開頭
    ) 移到下一個句子的開頭
    { 移到目前這一段的開頭
    } 移到下一段的開頭
    [[ 移到目前這一節的開頭
    ]] 移到下一節的開頭
    
啟動多個視窗
-----------

	vim -o file1 file2
	vim -O file1 file2

分割視窗
-----------
				
	:split
	:vsplit

	:split filename		開啟另一視窗瀏覽檔案
	:vsplit filename	開啟另一視窗瀏覽檔案

切換視窗
-----------
				
	C-w h 切換到左邊的視窗
	C-w j 切換到上面的視窗
	C-w k 切換到下面的視窗
	C-w l 切換到右邊的視窗

	C-w w 循環切換
	C-w t
	C-w b
	C-w p 

關閉視窗
-----------
				
	C-w c
	C-w q
	C-w o

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


