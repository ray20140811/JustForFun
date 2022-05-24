; there are actually two kinds of global variables in lisp:
;    data variables and function variables,
; here we are talking about data variables

; global variables can be declared and initialized with  defvar
(defvar x 3)

; a typical convention is to place * at the beginning and ending
;   of global variable names, e.g.
(defvar *x* 3)

; global constants can be declared and set with defconstant
(defconstant pi 3.14)

; variable names are not case sensitive by default,
;    and are converted to all uppercase
;    to make one case sensitive (or to include whitespace in it)
;    enclose the variable name in | sybols
(defvar |x| 5) ; create a lowercase x
(defvar |my var| 2) ; treats name of variable as "my var"

; you can set the value of a variable using setf
(setf x 3)
; if no such variable exists then this also declares it as a global variable

; note that there is also a setq function that can be used to change
;    variable values, e.g.
(setq x 10)
; the difference between setf and setq is that setf can be used to
;     change values beyond just variables, e.g.
;     (setf (car L) 10)  ; works, changes the front element of a list
;     (setq (car L) 10)  ; crashes
