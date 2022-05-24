#! /usr/bin/gcl -f

; set up some values for comparison
(setf x 3)
(setf y 3.0)
(setf z 3)
(setf L1 '(1 2))
(setf L2 '((1 2) 3))
(setf L3 (list L1 z))
(format t "x is 3, y is 3.0, z is 3~%")
(format t "L1 is (1 2), L2 is ((1 2) 3), L3 is (list L1 z)~%")
(format t "~%")

; equal does a structural comparison of the two values for equality
(format t "(equal x y): ~A~%" (equal x y))
(format t "(equal x z): ~A~%" (equal x z))
(format t "(equal x 3): ~A~%" (equal x 3))
(format t "(equal x 3.0): ~A~%" (equal x 3.0))
(format t "(equal L2 L3): ~A~%" (equal L2 L3))
(format t "~%")

; equalp and = true if two values are equivalent, e.g. 3 and 3.0
;    but = is just for numbers
(format t "(equalp x y): ~A~%" (equalp x y))
(format t "(equalp x z): ~A~%" (equalp x z))
(format t "(equalp x 3): ~A~%" (equalp x 3))
(format t "(equalp x 3.0): ~A~%" (equalp x 3.0))
(format t "(equalp L2 L3): ~A~%" (equalp L2 L3))
(format t "~%")
(format t "(= x y): ~A~%" (= x y))
(format t "(= x z): ~A~%" (= x z))
(format t "(= x 3): ~A~%" (= x 3))
(format t "(= x 3.0): ~A~%" (= x 3.0))
(format t "~%")

; eql is true if the two things compared are actually the same object,
;     of if a variable is compared to a character or number with the same value and type
(format t "(eql x y): ~A~%" (eql x y))
(format t "(eql x z): ~A~%" (eql x z))
(format t "(eql x 3): ~A~%" (eql x 3))
(format t "(eql x 3.0): ~A~%" (eql x 3.0))
(format t "(eql L2 L3): ~A~%" (eql L2 L3))
(format t "~%")

; eq is true iff the two things are actually the same object
(format t "(eq x y): ~A~%" (eq x y))
(format t "(eq x z): ~A~%" (eq x z))
(format t "(eq x 3): ~A~%" (eq x 3))
(format t "(eq x 3.0): ~A~%" (eq x 3.0))
(format t "(eq L2 L3): ~A~%" (eq L2 L3))
(format t "~%")
(setf a x)
(format t "a is set to x, (eq a x): ~A~%" (eq a x))
