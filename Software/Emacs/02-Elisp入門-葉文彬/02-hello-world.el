;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with <open> and enter text in its buffer.

(defun hello-world (name)
  "Say hello to user whose name is NAME."
  (message "Hello, %s" name))

;; C-h f: 查看这个函数的文档

(hello-world "Emacser")

(setq foo "I'm foo")
(message foo)

;; C-h v: 查看一个变量的文档
;; 当光标在 foo 上时用 C-h v

;; 特殊表达式（ special form）defvar，它可以声名一个变量
;; 1.setq 不能為變量提供文檔,但defvar可以
;; 2.defvar聲明的變量值不會改變成聲明的那個值

(defvar foo "Did I have a value?"
  "A demo variable")

(setq a "I am a" )
;(setq a "I am a" "setq a") ;; ERROR

(defvar b "I am b")
(defvar b "I am b" "defvar b")


(setq test "I am test")
(defvar test "I use defvar"
  "test for defvar after setq")
(setq test "I am setq test")

(defun circle-area (radix)
  (let ((pi 3.1415926)
	area)
    (setq area (* pi radix radix))
    (message "直徑為%.2f的圓面積是%.2f" radix area)))

(circle-area 3)

(defun my-circle-area (radius)
  (setq area (* float-pi radius radius))
    (message "Radius為%.2f的圓面積是%.2f" radius area))

(my-circle-area 3)
  
