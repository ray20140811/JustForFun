w3m
====

# 上網命令

## 基礎

	* q/Q 退出
	* H  打開幫助

## 翻頁
	
	* SPACE 向前翻頁
	* b     向後翻頁
	
## 游標移動	

	* h 向左移動
	* l 向右移動
	* j 向下移動
	* k 向上移動
	
## 其它移動	

	- 翻滾
		* J 向下翻滾一行
		* K 向上翻滾一行

	* z 將游標所在行置於螢幕中間
	
	- 撤銷
		* ( 取消
		* ) 恢復

## 鏈接相關 

	* TAB     跳至下一個鏈接
	* [       跳至第一個鏈接
	* ]       跳至最後一個鏈接
	* u       顯示鏈接的URL
	* Enter   跳轉鏈接
	* Ctrl-c  停止打開超鏈接

## 標籤頁相關 

	* Ctrl-t  在新標籤頁打開鏈接
	* }       跳轉至下一個標籤頁
	* {       跳轉至上一個標籤頁
	* Ctrl-q  關閉當前標籤頁
	* Esc-t   打開所有標籤頁以供選擇

## 書籤相關 
	
	* Esc-a  添加書籤
	* Esc-b  打開書籤
    
## 搜尋 

	* /  向後查找當前頁
	* ?  向前查找當前頁

## 其它操作 

	* v  查看源碼/查看頁面切換按鈕
	* a  游標在鏈接處時,保存鏈接到文件;游標在輸入框時,可輸入文本
	* =  顯示當前文檔的詳細信息,可以通過 B 返回
	* m  滑鼠支持滾輪切換按鈕,用於切換瀏覽器內滾輪還是命令行滾輪.默認瀏覽器滾輪

# 如何編輯bookmark
    
    vim ~/.w3m/bookmark

# 如何顯示行號

    w3m -num

# 如何啟動時開啟bookmark

    w3m -B 
    
# 移動到指定行號ex:第10行

    Esc g
    10
    
# 移動到指定行號ex:第10行

    num G


Manual
-------
Page/Cursor motion

 SPC,C-v  Forward page   
 b,ESC v  Backward page   
 l,C-f  Cursor right   
 h,C-b  Cursor left   
 j,C-n  Cursor down   
 k,C-p  Cursor up   
 J  Roll up one line   
 K  Roll down one line   
 ^,C-a  Go to the beginning of line   
 $,C-e  Go to the end of line   
 w  Go to next word   
 W  Go to previous word   
 >  Shift screen right   
 <  Shift screen left   
 .  Shift screen one column right   
 ,  Shift screen one column left   
 g,M-<  Go to the first line   
 G,M->  Go to the last line   
 ESC g  Go to specified line   
 Z  Move to the center line   
 z  Move to the center column   
 TAB  Move to next hyperlink   
 C-u,ESC TAB  Move to previous hyperlink   
 [  Move to the first hyperlink   
 ]  Move to the last hyperlink   

Hyperlink operation

 RET  Follow hyperlink   
 a, ESC RET  Save link to file   
 u  Peek link URL   
 i  Peek image URL   
 I  View inline image   
 ESC I  Save inline image to file   
 :  Mark URL-like strings as anchors   
 ESC :  Mark Message-ID-like strings as news anchors   
 c  Peek current URL   
 =  Display information about current document   
 C-g  Show current line number   
 C-h  View history of URL   
 F  Render frame   
 M  Browse current document using external browser (use 2M and 3M to invoke second and third browser)   
 ESC M  Browse link using external browser (use 2ESC M and 3ESC M to invoke second and third browser)   

File/Stream operation

 U  Open URL   
 V  View new file   
 @  Execute shell command and load   
 #  Execute shell command and browse   

Buffer operation

 B  Back to the previous buffer   
 v  View HTML source   
 s  Select buffer   
 E  Edit buffer source   
 C-l  Redraw screen   
 R  Reload buffer   
 S  Save buffer   
 ESC s  Save source   
 ESC e  Edit buffer image   

Buffer selection mode

 k, C-p  Select previous buffer   
 j, C-n  Select next buffer   
 D  Delect current buffer   
 RET  Go to the selected buffer   

Bookmark operation

 ESC b  Load bookmark   
 ESC a  Add current to bookmark   

Search

 /,C-s  Search forward   
 ?,C-r  Search backward   
 n  Search next   
 N  Search previous   
 C-w  Toggle wrap search mode   

Mark operation

 C-SPC  Set/unset mark   
 ESC p  Go to previous mark   
 ESC n  Go to next mark   
 "  Mark by regular expression   

Miscellany

 !  Execute shell command   
 H  Help (load this file)   
 o  Set option   
 C-k  Show cookie jar   
 C-c  Stop   
 C-z  Suspend   
 q  Quit (with confirmation, if you like)   
 Q  Quit without confirmation   

Line-edit mode

 C-f  Move cursor forward   
 C-b  Move cursor backward   
 C-h  Delete previous character   
 C-d  Delete current character   
 C-k  Kill everything after cursor   
 C-u  Kill everything before cursor   
 C-a  Move to the top of line   
 C-e  Move to the bottom of line   
 C-p  Fetch the previous string from the history list   
 C-n  Fetch the next string from the history list   
 TAB,SPC  Complete filename   
 RETURN  Accept   
---------------------------------------------------------------------------------------------------------------------------------------------------------

Lynx-like key binding

If you have chosen `Lynx-like key binding' at the compile time, you can use the following key binding. 

Page/Cursor motion

 SPC,C-v,+  Forward page   
 b,ESC v,-  Previous page   
 l  Cursor right   
 h  Cursor left   
 j  Cursor down   
 k  Cursor up   
 J  Roll up one line   
 K  Roll down one line   
 ^  Go to the beginning of line   
 $  Go to the end of line   
 >  Shift screen right   
 <  Shift screen left   
 C-a  Go to the first line   
 C-e  Go to the last line   
 G  Go to the specified line   
 Z  Move to the center line   
 z  Move to the center column   
 TAB,C-n,Down arrow  Move to next hyperlink   
 ESC TAB,C-p,Up arrow  Move to previous link   
 C-g  Show current page position   

Hyperlink operation

 RET, C-f, Right arrow  Follow hyperlink   
 d, ESC RET  Save link to file   
 u  Peek link URL   
 i  Peek image URL   
 I  View inline image   
 ESC I  Save inline image to file   
 :  Mark URL-like strings as anchors   
 ESC :  Mark Message-ID-like strings as news anchors   
 c  Peek current URL   
 =  Display information about current document   
 C-h  View history of URL   
 F  Render frame   
 M  Browse current document using external browser (use 2M and 3M to invoke second and third browser)   
 ESC M  Browse link using external browser (use 2ESC M and 3ESC M to invoke second and third browser)   

File/Stream operation

 g,U  Open URL   
 V  View new file   
 @  Execute shell command and load   
 #  Execute shell command and browse   

Buffer operation

 B, C-b, Left arrow  Back to the previous buffer   
 \  View HTML source   
 s, C-h  Select buffer   
 E  Edit buffer source   
 C-l, C-w  Redraw screen   
 R, C-r  Reload buffer   
 S, p  Save buffer   
 ESC s  Save source   
 ESC e  Edit buffer image   

Buffer selection mode

 k, C-p  Select previous buffer   
 j, C-n  Select next buffer   
 D  Delect current buffer   
 RET  Go to the selected buffer   

Bookmark operation

 v, ESC b  Load bookmark   
 a, ESC a  Add current to bookmark   

Search

 /, C-s  Search forward   
 n  Search next   
 w  Toggle wrap search mode   

Mark operation

 C-SPC  Set/unset mark   
 P  Go to previous mark   
 N  Go to next mark   
 "  Mark by regular expression   

Miscellany

 !  Execute shell command   
 H, ?  Help (load this file)   
 o  Set option   
 C-k  Show cookie jar   
 C-c  Stop   
 C-z  Suspend   
 q  Quit (with confirmation, if you like)   
 Q  Quit without confirmation   

Line-edit mode

 C-f  Move cursor forward   
 C-b  Move cursor backward   
 C-h  Delete previous character   
 C-d  Delete current character   
 C-k  Kill everything after cursor   
 C-u  Kill everything before cursor   
 C-a  Move to the top of line   
 C-e  Move to the bottom of line   
 C-p  Fetch the previous string from the history list   
 C-n  Fetch the next string from the history list   
 TAB,SPC  Complete filename   
 RETURN  Accept   
---------------------------------------------------------------------------------------------------------------------------------------------------------

