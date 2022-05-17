(setq l '(1 2 3))  ; (1 2 3)

(if (listp l)
    (setq l (cdr l))) ;(2 3)  ;(3)  ; nil
  
(progn
  (setq i 5)
  (setq sum 0)
  (while (> i 0)
    (setq sum (+ sum i))
    (setq i (- i 1)))
  (print sum))

(+ 5 4 3 2 1)

(if nil "true" "false")
