; type checking functions
; return true if the parameter has the desired property, nil otherwise
(functionp f)  ;; ex: (functionp 'load) , (functionp 'functionp)
(integerp i)   ;; ex: (integerp 10)
(realp r)      ;; ex: (realp 1) , (realp 1.5)
(numberp p)    ;; ex: (numberp 1)
(floatp f)     ;; ex: (floatp 1.0)
(stringp s)    ;; ex: (stringp "Hi")
(characterp c) ;; ex: (characterp #\c)
(listp l)      ;; ex; (listp '(a b c))
(arrayp a)     ;;
(vectorp v)
(symbolp p)
(boundp b)
(keywordp k)
(hash-table-p h)

; most typs have a comperable name to the checking function, e.g.
;   function, integer, number, etc
;
; we can also check if an item has a specific type using
;    (typep item type)
; 
; and look up an item's type using
;    (type-of item)
;
; there are a variety of additional type tests supported:
;    (typep m '(mod n)) returns true if m is an integer in the range 0..n-1
;    (typep m '(member a b c)) returns true if m is any one of a, b, or c
;
; --- we can define new types at compile time using deftype ---
; deftype works much like defmacro,
;    but defines new types that can be tested with the typep

(deftype mymod (n) `(integer 0 (,n)))
; test if an item is an integer in the range 0..n-1
;   (typep 3 '(mymod 4)) is true
;   (typep 3 '(mymod 3)) is false

; we can attempt the equivalent of C's type casting using coerce, e.g.
(coerce (vector 1 2 3) 'list)  ; create a list equivalent of the vector
(coerce 11/12 'float) ; returns the floating point equivalent of rational 11/12ths

; we can declare expressions or variables to be of specific types,
;    this is usually done in cases where the compiler could
;    significantly optimize memory storage (e.g. if we know
;    something will be a vector of fixnums then it could be
;    stored contiguously in memory rather than as a typical
;    linked-list-ish format)
;
; for global variables use declaim:
(defvar x 3)
(declaim (integer x))
;
; for local variables use declare:
(let ((z 1)) (declare (integer z)) (+ z z))
;
; we can do something similar for expressions using "the":
(the integer (+ 3 4))

