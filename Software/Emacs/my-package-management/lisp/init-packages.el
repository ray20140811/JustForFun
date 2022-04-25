;; ~/.emacs.d/lisp/init-packages.el
;;
;; __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |
;; 使用 Melpa
(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(
			      ;("gnu"   . "http://elpa.emacs-china.org/gnu/")
			      ;("melpa" . "http://elpa.emacs-china.org/melpa/")
			      ("melpa" . "https://melpa.org/packages/")
			      ;("marmalade" . "http://marmalade-repo.org/packages/")
			      )))

 ;; cl - Common Lisp Extension
;(require 'cl)
(require 'cl-lib)

 ;; Add Packages
 (defvar my-packages '(
		cheatsheet
		ace-window
		neotree
		;magit
		;; --- web-mode ---
		web-mode
		evil
		popwin
		;; --- Auto-completion ---
		company
		;; --- Better Editor ---
		hungry-delete
		swiper
		counsel
		smartparens
		;; --- Major Mode ---
		js2-mode
		;; --- Minor Mode ---
		nodejs-repl
		;exec-path-from-shell
		;; --- Themes ---
		monokai-theme
		;; solarized-theme
		) "Default packages")

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


;; 将删除功能配置成与其他图形界面的编辑器相同，即当你选中一段文字 之后输入一个字符会替换掉你选中部分的文字
(delete-selection-mode 1)

;; 开启全局 Company 补全
(global-company-mode 1)

(hungry-delete-mode 1)

(counsel-mode 1)

;(require 'smartparens)
(smartparens-mode 1)

;; js2-mode
;; auto-mode-alist 的作用，这个变量是一个 AssociationList，
;; 它使用正则表达式（REGEXP）的规则来匹配不同类型文件应使用的Major Mode。
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       '(("\\.html\\'" . web-mode))
       auto-mode-alist))


(popwin-mode 1)


(evil-mode 1)

;; 自动补齐引号和大括号
(electric-pair-mode 1)

;; 文件末尾
(provide 'init-packages)

