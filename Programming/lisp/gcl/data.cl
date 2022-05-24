; basic data types

; t is true, nil is false, nil and '() are equivalent
; text is put in double quotes "blah blah blah"
; characters are represented with #\, e.g. #\Q
; numbers supported include
;    integers, eg 123
;    fixed point, e.g.  123.456
;    exp. notation, e.g.  1.23456e8
;    rationals, e.g.     1/3
;    complex, e.g.     #c(5 6) represents (5 + 6i)
; lists are represented within parenthesis, and preceeded by a ', e.g.
;    '(1 2 3 4 5)
;    '("foo"  #\y  5.43 (1 2 3))
