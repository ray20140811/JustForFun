;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

(+ 3 (+ 1 2))

;; C-j
6

(setq my-name "Ray")

(insert "Hello!")

(insert "Hello" "world" "!")

(insert "Hello, I am " my-name)

(defun hello () (insert "Hello, I am " my-name))

(hello)

;;Hello, I am Ray

(defun hello (name) (insert "Hello " name))
;;hello

(hello "you")
;;Hello you

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(switch-to-buffer-other-window "*test*")

(progn
  (switch-to-buffer-other-window "*test*")
  (hello "Kuo"))

(progn
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello "there"))

(progn
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello "there")
  (other-window 1))
 
(let ((local-name "you"))
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello local-name)
  (other-window 1))

(format "Hello %s!\n" "visitor")

(defun hello (name)
  (insert (format "Hello %s!\n" name)))

(hello "you")

(defun greeting (name)
  (let ((your-name "Bastien"))
    (insert (format "Hello %s!\n\nI am %s."
		    name
		    your-name
		    ))))

(greeting "you")

(read-from-minibuffer "Enter your name: ")

(defun greeting (from-name)
  (let ((your-name (read-from-minibuffer "Enter your name: ")))
    (insert (format "Hello!\n\nI am %s and you are %s."
		    from-name;
		    your-name;
		    ))))
(greeting "Bastien")

;;Hello!

;;I am Bastien and you are Ray.nil

(defun greeting (from-name)
  (let ((your-name (read-from-minibuffer "Enter your name: ")))
    (switch-to-buffer-other-window "*test*")
    (erase-buffer)
    (insert (format "Hello %s!\n\nI am %s." your-name from-name))
    (other-window 1)))

(greeting "Bastien")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 我们将一些名字存到列表中：
(setq list-of-names '("Sarah" "Chloe" "Mathilde"))

;; 用 `car'来取得第一个名字：
(car list-of-names)

;; 用 `cdr'取得剩下的名字:
(cdr list-of-names)

;; 用 `push'把名字添加到列表的开头:
(push "Stephanie" list-of-names)

;; 注意: `car' 和 `cdr' 并不修改列表本身, 但是 `push' 却会对列表本身进行操作.
;; 这个区别是很重要的: 有些函数没有任何副作用（比如`car'）
;; 但还有一些却是有的 (比如 `push').

(format "%s" list-of-names)

;; 我们来对`list-of-names'列表中的每一个元素都使用hello函数:
(mapcar 'hello list-of-names)

(defun greeting ()
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (mapcar 'hello list-of-names)
  (other-window 1))

(greeting)

(defun replace-hello-by-bonjour ()
  (switch-to-buffer-other-window "*test*")
  (goto-char (point-min))
  (while (search-forward "Hello")
    (replace-match "Bonjour"))
  (other-window 1))

(replace-hello-by-bonjour)

(defun hello-to-bonjour ()
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (mapcar 'hello list-of-names)
  (goto-char (point-min))
  (while (search-forward "Hello" nil t)
    (replace-match "Bonjour"))
  (other-window 1))

(hello-to-bonjour)

(defun boldify-names ()
  (switch-to-buffer-other-window "*test*")
  (goto-char (point-min))
  (while (re-search-forward "Bonjour \\(.+\\)!" nil t)
    (add-text-properties (match-beginning 1)
			 (match-end 1)
			 (list 'face 'bold)))
  (other-window 1))

(boldify-names)


;; If you want to know more about a variable or a function:
;;
;; C-h v a-variable RET
;; C-h f a-function RET
;;
;; To read the Emacs Lisp manual with Emacs:
;;
;; C-h i m elisp RET
;;
;; To read an online introduction to Emacs Lisp:
;; https://www.gnu.org/software/emacs/manual/html_node/eintr/index.html	     

				 
