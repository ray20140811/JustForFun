;(require 'init-packages)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
;(global-set-key (kbd "<f2>") 'open-init-file)

;; 禁止 Emacs 自动生成备份文件，例如 init.el~
(setq make-backup-files nil)

;; 加入最近打开过文件的选项
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
;; Use Method: recentf-open-files
;; (global-set-key (kbd "C-x C-r") 'recentf-open-files)


;; 自动加载外部修改过的文件
(global-auto-revert-mode 1)

;; 关闭自动保存文件
(setq auto-save-default nil)

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
    ("r.k" "Ray Kuo")
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

;;设定为默认递归删除目录
;(setq dired-recursive-deletes 'always)
;;设定为默认递归拷贝目录
;(setq dired-recursive-copies 'always)

;;重用唯一的一个缓冲区作为 Dired Mode 显示专用缓冲区。
;(put 'dired-find-alternate-file 'disabled nil)

(provide 'init-custom)
