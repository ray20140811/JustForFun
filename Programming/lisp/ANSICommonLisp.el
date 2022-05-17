*** Welcome to IELM ***  Type (describe-mode) for help.
ELISP> 1
1 (#o1, #x1, ?\C-a)
ELISP> (+ 2 3)
5 (#o5, #x5, ?\C-e)
ELISP> (+ 2 3 4)
9 (#o11, #x9, ?\C-i)
ELISP> (+)
0 (#o0, #x0, ?\C-@)
ELISP> (+ 2)
2 (#o2, #x2, ?\C-b)
ELISP> (+ 2 3)
5 (#o5, #x5, ?\C-e)
ELISP> (+ 2 3 4)
9 (#o11, #x9, ?\C-i)
ELISP> (+ 2 3 4 5)
14 (#o16, #xe, ?\C-n)
ELISP> (/ (- 7 1) (- 4 2))
3 (#o3, #x3, ?\C-c)
ELISP> 2 (+ 2 3) (+ 2 3 4) (/ (- 7 1) (- 4 2))
*** IELM error ***  More than one sexp in input
ELISP> (/ 1 0)
*** Eval error ***  Arithmetic error
ELISP> (quote (+ 3 5))
(+ 3 5)

ELISP> '(+ 3 5)
(+ 3 5)

ELISP> 'Artichoke
Artichoke
ELISP> '(my 3 "Sons")
(my 3 "Sons")

ELISP> '(the list (a b c) has 3 elements)
(the list
     (a b c)
     has 3 elements)

ELISP> (list 'my (+ 2 1) "Sons")
(my 3 "Sons")

ELISP> (list '(+ 2 1) (+ 2 1))
((+ 2 1)
 3)

ELISP> ()
nil
ELISP> nil
nil
ELISP> (cons 'a '(b c d))
(a b c d)

ELISP> (cons 'a (cons 'b nil))
(a b)

ELISP> (list 'a 'b)
(a b)

ELISP> (car '(a b c))
a
ELISP> (cdr '(a b c))
(b c)

ELISP> (car (cdr (cdr '(a b c d))))
c
ELISP> (third '(a b c d))
*** Eval error ***  Symbol’s function definition is void: third
ELISP> (listp '(a b c))
t
ELISP> (listp 27)
nil
ELISP> (null nil)
t
ELISP> (not nil)
t
ELISP> (if (listp '(a b c))
           (+ 1 2)
           (+ 5 6))
3 (#o3, #x3, ?\C-c)
ELISP> (if (listp 27)
           (+ 1 2)
           (+ 5 6))
11 (#o13, #xb, ?\C-k)
ELISP> (if (listp 27)
           (+ 1 2))
nil
ELISP> (if 27 1 2)
1 (#o1, #x1, ?\C-a)
ELISP> (and t (+ 1 2))
3 (#o3, #x3, ?\C-c)
ELISP> (defun our-third (x)
         (car (cdr (cdr x))))
our-third
ELISP> (our-third '(a b c d))
c
ELISP> (> (+ 1 4) 3)
t
ELISP> (defun sum-greater (x y z)
         (> (+ x y) z))
sum-greater
ELISP> (sum-greater 1 4 3)
t
ELISP> (defun our-member (obj lst)
         (if (null lst)
             nil
         (if (eql (car lst) obj)
             lst
             (our-member obj (cdr lst)))))
our-member
ELISP> (our-member 'b '(a b c))
(b c)

ELISP> (our-member 'z '(a b c))
nil
ELISP> (format t "~A plus ~A equals ~A. ~%" 2 3 (+ 2 3))
*** Eval error ***  Wrong type argument: stringp, t
ELISP> (format "%d plus %d equals %d." 2 3 (+ 2 3))
"2 plus 3 equals 5."
ELISP> (defun askem (string)
         (format t "~A" string)
         (read))
askem
ELISP> (askem "How old are you?")
*** Eval error ***  Wrong type argument: stringp, t
ELISP> (defun askem (string)
         (format "%s" string)
         (read))
askem
ELISP> (askem "How old are you?")
40 (#o50, #x28, ?\()
ELISP> (let ((x 1) (y 2))
         (+ x y))
3 (#o3, #x3, ?\C-c)
ELISP> (defun ask-number ()
         (format t "Please enter a number.")
         (let ((val (read)))
           (if (numberp val)
               val
               (ask-number))))
ask-number
ELISP> (ask-number)
*** Eval error ***  Wrong type argument: stringp, t
ELISP> (defun ask-number ()
         (format "Please enter a number.")
         (let ((val (read)))
           (if (numberp val)
               val
               (ask-number))))
ask-number
ELISP> (ask-number)
52 (#o64, #x34, ?4)
ELISP> (defparameter *glob* 99)
                             
*** Eval error ***  Symbol’s function definition is void: defparameter
ELISP> (defconst *glob* 99)
*glob*
ELISP> (defconstant limit (+ *glob* 1))
*** Eval error ***  Symbol’s function definition is void: defconstant
ELISP> (defconst limit (+ *glob* 1))
limit
ELISP> (boundp '*glob*)
t
ELISP> 
ELISP> (boundp limit)
*** Eval error ***  Wrong type argument: symbolp, 100
ELISP> (boundp 'limit)
t
ELISP> (setf *glob* 98)
98 (#o142, #x62, ?b)
ELISP> (let ((n 10))
         (setf n 2)
         n)
2 (#o2, #x2, ?\C-b)
ELISP> (setf x (list 'a 'b 'c))
(a b c)

ELISP> (setf (car x) 'n)
n
ELISP> x
(n b c)

ELISP> (setf a 'b
             c 'd
             e 'f)
f
ELISP> (setf a 'b)
b
ELISP> (setf c 'd)             
d
ELISP> (setf e 'f)
f
ELISP> (setf lst '(c a r a t))
(c a r a t)

ELISP> (remove 'a lst)
(c r t)

ELISP> lst
(c a r a t)

ELISP> (setf x (remove 'a x))
(n b c)

ELISP> 

ELISP> 