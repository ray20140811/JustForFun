; Getting started in gnu common lisp (gcl)
; ========================================

; If you come from a C/C++/Java programming background,
; Lisp will feel quite different at first, both in syntax
; and in the way you approach problem solving/programming.

; First a few basic syntax differences:
;
; 0. Comments begin with a ; and continue to the end of the line,
;    most of this file is written as a collection of lisp comments
;
; 1. Function calls are written with the function name INSIDE
;    the brackets, e.g. if our C function call looked like
;        foo(x, b, c)
;    then the equivalent lisp call would look like
;        (foo x b c)
;
; 2. All expressions are written the same way as function calls,
;    e.g. if in C we wanted to compute
;        x + y
;    then the equivalent lisp expression would be
;        (+ x y)
;
; 3. Everything is done using function calls, even things like
;    variable declarations and assignment operations,
;    e.g. if in C we wanted to declare a variable like
;       int x = 0;
;    the equivalent lisp would be
;       (defvar x 0)
;
;    if in C we wanted to assign a new value to x, e.g.
;       x = 27;
;    the equivalent lisp would be
;       (setf x 27)
;
; 4. Variables don't have a specific data type in lisp, they
;    can hold different types of data at different times, e.g.
;       (defvar y 3)
;       (setf y "foo")
;       (setf y 3.1415)
;
; 5. Compound expressions are done using nested function calls,
;    e.g. if in C we wanted to compute
;       x = (3 * y) + (z / 7)
;    then the equivalent lisp would be
;       (setf x (+ (* 3 y) (/ z 7)))
;
; 6. Lisp can be run through an interpretter - allowing you
;    to type in lisp function calls and have them immediately
;    evaluated.  Our lisp interpretter is /usr/bin/gcl, so you
;    can run it by typing
;       gcl
;    It will show you a prompt, e.g.
;    >
;    You can now try typing lisp functions and see the results, e.g.
;    > (+ 27 3)
;
;    30
;
;    > (defvar X 12)
;
;    X
;
;    When you are ready to exit the interpretter use the quit function, i.e.
;    > (quit)
;
; 7. The lisp equivalent of printf is called format, which uses ~A where
;    printf would use %d, %f, etc, and uses ~% instead of \n, e.g.
;    if our C code looked something like
;       printf("x is %d, y is %f\n", x, y);
;    then the lisp equivalent would be
;       (format t "x is ~A, y is ~A~%" x y)
;
; 8. To read input from the keyboard we simply use the (read) function,
;    e.g. to prompt the user to enter an integer then read it into x
;    we could use the following:
;       (format t "Please enter an integer~%")
;       (setf x (read))
;
; 9. We can put lisp code into a file for execution later by putting
;
;    #! /usr/bin/gcl -f
;
;    as the first line of the file (telling it where to look for the
;    lisp interpretter) and then making the file executable.  After that
;    we can run the code from the linux command prompt using ./filename
;
; That concludes our quick intro, see the rest of the lisp notes for
; lots more to do with the language.
