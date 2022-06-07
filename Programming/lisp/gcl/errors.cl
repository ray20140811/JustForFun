#! /usr/bin/gcl -f

; function defn with no parameter list, thinks the format is the param list
; (defun f1 (format t "Hello~%")) 	;; this line is wrong
; (defun f1 () (format t "Hello~%")) 	;; this line is correct
; (f1)

; format missing the value to print out
; (defun f2 (x) (format t "x is ~A~%")) ;; this line is wrong
; (defun f2 (x) (format t "x is ~A~%" x)) ;; this line is correct 
; (f2 3)

; function missing a closing bracket
; (defun f3 (x) (format t "x is ~A~%" x)
; (f3 3)

; format missing a closing "
; (defun f4 (x) (format t "x is ~A~% x))
; (f4 3)

; putting the function call before the (
(defun f5 (x) (format t "x is ~A~%" x))
;f5(5)
(f5 5)
