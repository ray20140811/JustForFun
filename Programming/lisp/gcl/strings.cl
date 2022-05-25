; string functions
; (strings are simply vectors of characters)

; sequence functions work on strings, e.g.
(length str) ; e.g. (length "Hello") ; returns 5
(concatenate 'string "foo" "blah") ; returns "fooblah"
(elt "abcdefg" 2) ; returns #\c
(count "count the cs" #\c) ; not work, why?
(substitue #\x #\X "extra") ; it should return "eXtra" but it return "extra" ;
(substitue #\X #\x "extra") ; returns "eXtra"
; etc

; get the i'th character from a string
(char str 3) ; like elt
(char "Hello" 3) ; returns \#l

; convert between integers and strings
(parse-integer "42") ; returns 42

; using read/write to convert between anything (lisp recognizes) and strings
(read-from-string str) ; e.g. (read-from-string "Hello")
(write-to-string val) ; e.g. (write-to-string 12)

; using format convert to a number into a string
(setf N 12345) ; returns 12345
(setf str (format nil "~A" N)) ; returns "12345"

; convert to upper/lowercase
(string-upcase str) ; e.g. (string-upcase "hello") returns "HELLO"
(string-downcase str) ; (string-downcase "HELLO") return "hello"

; convert a symbol to a string, e.g. var to "var"
(symbol-name x) ; e.g. (symbol-name '()) returns "NIL"
(symbol-name 'defun) ; returns "DEFUN"
; convert a string to a symbol
(intern sym) ; e.g. (intern "A") or (intern "ABC")

; compare strings
(setf str1 "hello")
(setf str2 "hi")
(string= str1 str2) ; returns NIL
(string/= str1 str2) ; returns 1
(string<= str1 str2) ; returns 1
(string>= str1 str2) ; returns NIL
(string< str1 str2) ; returns 1
(string> str1 str2) ; returns NIL
(string= str1 str2) ; returns NIL

; convert a string to a list of characters
(defun str2list (str)
  (if (stringp str) (loop for char across str collect char)))

(str2list "hello") ; returns (#\h #\e #\l #\l #\o)

; convert a list to a string
(defun list2str (L)
  (if (listp L) (format nil "~{~A~}" L)))

(list2str '(#\h #\e #\l #\l #\o))
(list2str '(a b c))
  
