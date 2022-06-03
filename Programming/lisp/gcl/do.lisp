;(do
;  ((x 5 (* x 2)) (y 100 (+ y 1)))
;  ((> x y) (format t "~A" (* x y)) (+ x y))
;  (format t "~A, ~A~%" x y))

(format t "Input a number between 0 and 1: ")
(setf x (read))
(do
  ((i 1 (+ i 1)))
  ((> i 10) ())
  (format t "~A~%" (setf x (* 3.9 x (- 1 x)))))
  
