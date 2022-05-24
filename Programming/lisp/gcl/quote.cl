; the (quote x) function returns parameter x without evaluating it
; this can also be done using the shorthand notation:
;    'x
;
; e.g.    (quote (1 2 3 4)) ; returns the list (1 2 3 4)
; whereas (1 2 3 4) would attempt to evaluate function 1 on values 2 3 4

; examples
(defvar x 1)

(eval x)  ; x is evaluated (giving 1) before running (eval 1), giving 1

(eval 'x) ; 'x returns x, it then runs (eval x), giving 1

(eval (quote x)) ; exactly as (eval 'x)

(eval '(quote x)) ; '(quote x) returns (quote x),
                  ; then runs (eval (quote x))
                  ;    which returns x
