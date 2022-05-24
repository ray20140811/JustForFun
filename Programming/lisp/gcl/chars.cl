
; char functions

; #\x is the literal character x

; special chars:
;   #\Backspace #\Space #\Newline #\Tab
;   #\Return #\Linefeed #\Rubout #\Page

; special chars within text literals
;    "... \" ... "

(setf c1 #\q)
(setf c2 #\Q)

; convert cases
(char-upcase c1)
(char-downcase c2)

; convert between ascii and chars
(code-char 63)  ; converts from ascii to char
(char-code #\a) ; converts from char to ascii

; compare characters
(char= c1 c2)
(char/= c1 c2)
(char<= c1 c2)
(char>= c1 c2)
(char< c1 c2)
(char> c1 c2)
(char= c1 c2)

; reading chars from streams
(read-char stream nil) ; read from stream, nil if end of stream
(peek-char stream nil) ; peek at next char in stream, nil if end of stream
(unread-char c stream) ; put c back into front of input stream
