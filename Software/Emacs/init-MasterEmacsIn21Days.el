;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
;(global-linum-mode 1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; 更改光标的样式（不能生效，解决方案见第二集
(setq cursor-type 'bar)

;; 更改显示字体大小 14pt
(set-face-attribute 'default nil :height 140)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)


;; 禁止 Emacs 自动生成备份文件，例如 init.el~
(setq make-backup-files nil)

;; 加入最近打开过文件的选项
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
;; Use Method: recentf-open-files
;; (global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; 将删除功能配置成与其他图形界面的编辑器相同，即当你选中一段文字 之后输入一个字符会替换掉你选中部分的文字
(delete-selection-mode 1)

;; 使用 Melpa
(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(
			      ;("gnu"   . "http://elpa.emacs-china.org/gnu/")
			      ;("melpa" . "http://elpa.emacs-china.org/melpa/")
			      ("melpa" . "https://melpa.org/packages/")
			      ("marmalade" . "http://marmalade-repo.org/packages/")
			      )))


 ;; cl - Common Lisp Extension
;(require 'cl)
(require 'cl-lib)

 ;; Add Packages
 (defvar my-packages '(
		neotree
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

 ;; Find Executable Path on OS X
; (when (memq window-system '(mac ns))
;   (exec-path-from-shell-initialize))

;(cl-loop for x from 1 to 100
;	 for y = (* x x)
;	 until (>= y 729)
;	 finally return (list x (= y 729)))

;; Emacs 设置为开启默认全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 自动括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 高亮当前行
(global-hl-line-mode 1)

;; 安装主题 
(add-to-list 'my-packages 'monokai-theme)

;; 加载主题
(load-theme 'monokai 1)
;; (load-theme 'tango-dark 1)

;; 选择对应的插件名称，可以进入可视化选项区对指定的插件做自定义设置
;; M-x custmoize-group <PACKAGE-NAME>

;; MEMO: 推荐插件 
;; * company
;; * hungry-delete
;; * Smex (如果你使用 Counsel 来增强你的 M-x ，那么就不需要再安装 Smex 了)
;; * Swiper & Counsel
;; * smartparens

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

;; MEMO: 正则表达式匹配的例子
;; (("\\`/tmp/fol/" . text-mode)
;;  ("\\.texinfo\\'" . texinfo-mode)
;;  ("\\.texi\\'" . texinfo-mode)
;;  ("\\.el\\'" . emacs-lisp-mode)
;;  ("\\.c\\'" . c-mode)
;;  ("\\.h\\'" . c-mode)
;;  …)

;下面是如何添加新的模式与对应文件类型的例子
;(setq auto-mode-alist
;  (append
;   ;; File name (within directory) starts with a dot.
;   '(("/\\.[^/]*\\'" . fundamental-mode)
;     ;; File name has no dot.
;     ("/[^\\./]*\\'" . fundamental-mode)
;     ;; File name ends in ‘.C’.
;     ("\\.C\\'" . c++-mode))
;   auto-mode-alist))


;; 自动加载外部修改过的文件
(global-auto-revert-mode 1)

;; 关闭自动保存文件
(setq auto-save-default nil)

;; popwin 自动将光标移动到，新创建的窗口中。
(require 'popwin)
(popwin-mode 1)

;; 关闭 Emacs 中的警告音
(setq ring-bell-function 'ignore)

;; (yes or no ) 设置一个别名将其简化
(fset 'yes-or-no-p 'y-or-n-p)

;; 一次重新缩进全部缓冲区的代码
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer.")))))

(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;; 缩写补全
(setq-default abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
    ;; Shifu
    ("8zl" "zilongshanren")
    ;; Tudi
    ("8lxy" "lixinyang")
    ("kuo" "Ray Kuo")
   ))

;; Hippie 补全
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))

;(global-set-key (kbd "s-/") 'hippie-expand)

;; dired-mode
;; ===========
;;  + 创建目录
;;  g 刷新目录
;;  C 拷贝
;;  D 删除
;;  R 重命名
;;  d 标记删除
;;  u 取消标记
;;  x 执行所有的标记

;;设定为默认递归删除目录
;(setq dired-recursive-deletes 'always)
;;设定为默认递归拷贝目录
;(setq dired-recursive-copies 'always)

;;重用唯一的一个缓冲区作为 Dired Mode 显示专用缓冲区。
(put 'dired-find-alternate-file 'disabled nil)

;; 主动加载 Dired Mode
(require 'dired)
;(defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; 延迟加载
;(with-eval-after-load 'dired
;    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;(require 'dired-x)
;(setq dired-dwin-target 1) 

;; 在 Emacs Lisp 中有时候只需要一个',但是 Emacs 很好心的帮我们做了补全，但这并不是我们需要的。
;(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
;(sp-local-pair 'lisp-interaction-mode "'" nil :actions nil)

;; 也可以把上面两句合起来
;(sp-local-pair '(emacs-lisp-mode lisp-interaction-mode) "'" nil :actions nil)

;; 光标 在括号内时就高亮包含内容的两个括号
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))

;; 隐藏换行符\r(^M)
(defun hidden-dos-eol ()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (unless buffer-display-table
    (setq buffer-display-table (make-display-table)))
  (aset buffer-display-table ?\^M []))

;; 定义函数将换行符\r(^M)删除，
;(defun remove-dos-eol ()
;  "Replace DOS eolns CR LF with Unix eolns CR"
;  (interactive)
;  (goto-char (point-min))
;  (while (search-forward "\r" nil t) (replace-match "")))

;; web-mode
;; web-mode 支持在 HTML 文件中存在多语言，所以我们可以对不同的语言的缩减做出设置。

;(defun my-web-mode-indent-setup ()
;  (setq web-mode-markup-indent-offset 2) ; web-mode, html tag in html file
;  (setq web-mode-css-indent-offset 2)    ; web-mode, css in html file
;  (setq web-mode-code-indent-offset 2)   ; web-mode, js code in html file
;  )
;(add-hook 'web-mode-hook 'my-web-mode-indent-setup)


;;----------1115-----------------------
(require 'evil)
(evil-mode 1)

