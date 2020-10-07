w3m
====

# 如何打開幫助

    H
    
# 如何返回上一頁

    B
    
# 如何添加bookmark
    
    Esc + a

# 如何打開bookmark

    Esc + b 
    
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

# 如何下一頁

    space 
    
# 如何上一頁

    b 

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

