;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with <open> and enter text in its buffer.

buffer-file-name

(+ 1 2 3)

(+ (* 2 3)
   (/ 4 2))

(message "this is help")
(format "Hello World!~")
(print "Print to mini buffer")
(insert " ; insert this text")

;;
;; list
;;

;; 產生(1 2 3)的list
(list 1 2 3)               ;; (1 2 3) 

(list a b c)               ;; ERROR
(list 'a 'b 'c)            ;; (a b c)

;; list裡面可以有各種類別
(list 'my (+ 1 1) "son")   ;;(my 2 "son")

'(my (+ 1 1) "son")        ;; (+ 1 1) 不會進行運算

;; 用quote也會產生(1 2 3)的list,因為常用,所以也可以簡寫為'(1 2 3)
(quote (1 2 3))            ;; (1 2 3)
'(1 2 3)                   ;; (1 2 3)
(quote 1 2 3)              ;; ERROR
(quote (a b c))            ;; (a b c)
(quote a b c)              ;; ERROR
'(a b c)                   ;; (a b c)

(quote (1 (+ 2 3) 4))      ;; qutoe不會進行運算.所以會得到(1 (+ 2 3) 4)
'(1 (+ 2 3) 4)             ;; 也是得到(1 (+ 2 3) 4)
(list 1 (+ 2 3) 4)         ;; list會先做參數的evaluation.所以得到(1 5 4)

(quote 'my (+ 1 1) "son")  ;; ERROR 
'(my (+ 1 1) "son)         ;; ERROR

(car '(1 2 4))
(cdr '(1 4 6))
(cons 1 '(2 5))
'(1 . (2 5))
(cons '(2 5) 1)

'(" this is " . "a text")

(cadr '(superman batman aquamen flash joker))
(nth 2 '(superman batman aquament flash))

(member 'b '(a b c))
(member '(a) '((a) (z)))
(memq '(a) '((a) (z)))

;; 全域變數
(defvar my/test1 "Hello World" "這是一個測試用的變數") 
(print my/test1)

;; 也可用setq來定義
(setq my/test2 "Hello World")
(print my/test2)

;; 但不能用set.因為當elisp求my/test3的值會發生void variable變數未定義的錯誤
;; (set my/test3 "Hello Test") ;; ERROR
;;可以用下面的方式,和setq是一樣
(set 'my/test3 "Hello Test")

