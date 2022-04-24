(message "hi")

(message "Her age is: %d" 16)
(message "Her name is: %s" "Vicky")
(message "My list is: %s" (list 8 2 3))

(+ 4 5 1)
(- 9 2)
(- 9 2 3)
(* 2 3)

(if nil "yes" "no")
(if () "yes" "no")
(if '() "yes" "no")
(if (list) "yes" "no")

(if t "yes" "no")
(if 0 "yes" "no")
(if "" "yes" "no")
(if [] "yes" "no")

(and t nil)
(and t nil t t t t)

(< 3 4)

(> 3 4)

(<= 3 4)

(>= 3 4)

(= 3 3)


(= 3 3.00000000000000001)

;; not equal
(/= 3 4)

(string-equal "abc" "abc")

;; nil. case matters
(string-equal "abc" "ABC")

(string-equal "abc" 'abc)

(= 3 3)

(= 3 3.0)

(equal 3 3)
(equal 3.0 3.0)

(equal 3 3.0) ;;datatype doesn't match 3 is integer 3.0 is floating

(equal '(3 4 5) '(3 4 5))
(equal '(3 4 5) '(3 4 "5"))

(equal "e" "e")

(equal 'abc 'abc)

(not (equal 3 4))

(setq x 1)

(setq a 3 b 2 c 7)
(+ a b)

(setq ithelp-neotree-n "n:next line" neotree-p "p:previous line")

(ithelp-neotree)
