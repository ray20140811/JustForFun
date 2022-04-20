;; ~/.emacs.d/lisp/init-packages.el
;;
;; __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |
(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; Add Packages
(defvar my-packages '(
		      evil
		      ;; --- Auto-completion ---
		      company
		      ;; --- Better Editor ---
		      smooth-scrolling
		      hungry-delete
		      swiper
		      counsel
		      smartparens
		      ;; --- Major Mode ---
		      js2-mode
		      markdown-mode
		      ;; --- Minor Mode ---
		      ;; Quick Note Taking
		      deft
		      ;; JavaScript REPL
		      nodejs-repl
		      ;; Find OS X Executable Helper Package
))

(setq package-selected-packages my-packages)

(defun my-packages-installed-p ()
     (cl-loop for pkg in my-packages
	   when (not (package-installed-p pkg)) do (cl-return nil)
	   finally (cl-return t)))

(unless (my-packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my-packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))


;; 文件末尾
(provide 'init-packages)

