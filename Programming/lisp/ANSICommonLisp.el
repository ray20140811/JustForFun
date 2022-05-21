*** Welcome to IELM ***  Type (describe-mode) for help.
> 1
1 (#o1, #x1, ?\C-a)
> (+ 2 3)
5 (#o5, #x5, ?\C-e)
> (+ 2 3 4)
9 (#o11, #x9, ?\C-i)
> (+)
0 (#o0, #x0, ?\C-@)
> (+ 2)
2 (#o2, #x2, ?\C-b)
> (+ 2 3)
5 (#o5, #x5, ?\C-e)
> (+ 2 3 4)
9 (#o11, #x9, ?\C-i)
> (+ 2 3 4 5)
14 (#o16, #xe, ?\C-n)
> (/ (- 7 1) (- 4 2))
3 (#o3, #x3, ?\C-c)
> 2 (+ 2 3) (+ 2 3 4) (/ (- 7 1) (- 4 2))
*** IELM error ***  More than one sexp in input
> (/ 1 0)
*** Eval error ***  Arithmetic error
> (quote (+ 3 5))
(+ 3 5)

> '(+ 3 5)
(+ 3 5)

> 'Artichoke
Artichoke
> '(my 3 "Sons")
(my 3 "Sons")

> '(the list (a b c) has 3 elements)
(the list
     (a b c)
     has 3 elements)

> (list 'my (+ 2 1) "Sons")
(my 3 "Sons")

> (list '(+ 2 1) (+ 2 1))
((+ 2 1)
 3)

> ()
nil
> nil
nil
> (cons 'a '(b c d))
(a b c d)

> (cons 'a (cons 'b nil))
(a b)

> (list 'a 'b)
(a b)

> (car '(a b c))
a
> (cdr '(a b c))
(b c)

> (car (cdr (cdr '(a b c d))))
c
> (third '(a b c d))
*** Eval error ***  Symbol’s function definition is void: third
> (listp '(a b c))
t
> (listp 27)
nil
> (null nil)
t
> (not nil)
t
> (if (listp '(a b c))
           (+ 1 2)
           (+ 5 6))
3 (#o3, #x3, ?\C-c)
> (if (listp 27)
           (+ 1 2)
           (+ 5 6))
11 (#o13, #xb, ?\C-k)
> (if (listp 27)
           (+ 1 2))
nil
> (if 27 1 2)
1 (#o1, #x1, ?\C-a)
> (and t (+ 1 2))
3 (#o3, #x3, ?\C-c)
> (defun our-third (x)
         (car (cdr (cdr x))))
our-third
> (our-third '(a b c d))
c
> (> (+ 1 4) 3)
t
> (defun sum-greater (x y z)
         (> (+ x y) z))
sum-greater
> (sum-greater 1 4 3)
t
> (defun our-member (obj lst)
         (if (null lst)
             nil
         (if (eql (car lst) obj)
             lst
             (our-member obj (cdr lst)))))
our-member
> (our-member 'b '(a b c))
(b c)

> (our-member 'z '(a b c))
nil

;; 2.9 Input and Output
;; ACL (ANSI Common Lisp)
> (format t "~A plus ~A equals ~A. ~%" 2 3 (+ 2 3))
*** Eval error ***  Wrong type argument: stringp, t

;; elisp
> (format "%d plus %d equals %d." 2 3 (+ 2 3))
"2 plus 3 equals 5."

;; ACL (ANSI Common Lisp)
> (defun askem (string)
         (format t "~A" string)
         (read))
askem
> (askem "How old are you?")
*** Eval error ***  Wrong type argument: stringp, t

;; elisp
> (defun askem (string)
         (format "%s" string)
         (read))
askem
> (askem "How old are you?")
40 (#o50, #x28, ?\()


;; 2.10 Variables
> (let ((x 1) (y 2))
         (+ x y))
3 (#o3, #x3, ?\C-c)

;; ACL (ANSI Common Lisp)
> (defun ask-number ()
         (format t "Please enter a number.")
         (let ((val (read)))
           (if (numberp val)
               val
               (ask-number))))
ask-number
> (ask-number)
*** Eval error ***  Wrong type argument: stringp, t

;; elisp
> (defun ask-number ()
         (format "Please enter a number.")
         (let ((val (read)))
           (if (numberp val)
               val
               (ask-number))))
ask-number
> (ask-number)
52 (#o64, #x34, ?4)

> (defparameter *glob* 99)
                             
*** Eval error ***  Symbol’s function definition is void: defparameter
> (defconst *glob* 99)
*glob*
> (defconstant limit (+ *glob* 1))
*** Eval error ***  Symbol’s function definition is void: defconstant
> (defconst limit (+ *glob* 1))
limit
> (boundp '*glob*)
t
> 
> (boundp limit)
*** Eval error ***  Wrong type argument: symbolp, 100
> (boundp 'limit)
t

;; 2.11 Assignment
> (setf *glob* 98)
98 (#o142, #x62, ?b)
> (let ((n 10))
         (setf n 2)
         n)
2 (#o2, #x2, ?\C-b)
> (setf x (list 'a 'b 'c))
(a b c)

> (setf (car x) 'n)
n
> x
(n b c)

> (setf a 'b
             c 'd
             e 'f)
f
> (setf a 'b)
b
> (setf c 'd)             
d
> (setf e 'f)
f

;; 2.12 Functional Programming
> (setf lst '(c a r a t))
(c a r a t)

> (remove 'a lst)
(c r t)

> lst
(c a r a t)

> (setf x '(n a b c))
> (setf x (remove 'a x))
(n b c)

;; 2.13 Iteration
;; ACL (ANSI Common Lisp)
(defun show-squares (start end)
  (do ((i start (+ i 1)))
      ((> i end) 'done)
      (format t "~A ~A~%" i (* i i))))

> (show-squares 2 5)
2 4
3 9
4 16
5 25
DONE

;; ACL (ANSI Common Lisp)
(defun show-squares (i end)
  (if (> i end)
      'done
    (progn
      (format t "%d %d" i (* i i))
      (show-squares (+ i 1) end))))

(show-squares 2 5)

;; elisp
;; only display nil 
(defun show-squares (start end)
  (setq i start)
  (dotimes (i end))
    (unless (< i end)
      (message "%d" i)))
 
;; elisp
;; only display done
(defun show-squares (i end)
  (if (> i end)
      'done
    (progn
      ;(format "%d %d" i (* i i))
      ;(message "%d %d" i (* i i))
      ;(prin1 "%d %d" i (* i i))
      (show-squares (+ i 1) end))))

(show-squares 2 5)

(defun our-length (lst)
  (let ((len 0))
    (dolist (obj lst)
      (setf len (+ len 1)))
    len))

> (our-length '(a b c d))
4


(defun our-length (lst)
  (if (null lst)
      0
    (+ (our-length (cdr lst)) 1)))

> (our-length '(a b c d))
4

;; 2.14 Functions as Objects
;; ACL (ANSI Common Lisp)
> (function +)
#<Compiled-Function + 17BA4E>

;; clisp
> (function +)
#<SYSTEM-FUNCTION +>

;; elisp
> (function +)
+

;; ACL (ANSI Common Lisp)
> #'+
#<Compiled-Function + 17BA4E>

;; clisp
> #'+
#<SYSTEM-FUNCTION +>

;; elisp
> #'+
+

;; elisp dotimes example-01
(let (value)
  (dotimes (number 3)
    (setq value (cons number value)))
  value)

;; elisp dotimes example-02
(defun triangle-using-dotimes (number-of-rows)
  "Using `dotimes', and up the number of pebbles in a triangle."
         (let ((total 0))
           (dotimes (number number-of-rows)
             (setq total (+ total (1+ number))))
           total))

(triangle-using-dotimes 4)

(defun power-i (x y)
  (let ((result 1))
    (dotimes (count y result)
      (setf result (* x result)))))

(power-i (3 4))

(setq animals '(gazelle giraffe lion tiger))
(reverse animals)

;; elisp sample
(format "%d" 1)
(message "%d %d" 2 (* 2 2))

(progn
  (format "%d" 1)
  (message "%d" 2)
  (message "%d %d" 2 (* 2 2)))
