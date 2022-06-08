#! /bin/gcl -f

(defun if-sample (x)
       (if (numberp x)
       	   (format t "x=~A and (sqrt x)=~A~%" x (sqrt x))
	   (format t "x=~A and x is not a number~%" x)))

;; test
(format t "test case 1:~%")
(if-sample 9)

(format t "test case 2:~%")
(if-sample "9")