(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; 如果未安裝 use-package，安裝它
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; 使用 diminish (隱藏）及 bind-key 套件
(use-package diminish :ensure t)
(use-package bind-key :ensure t)

;; 使用自動更新套件
(use-package auto-package-update
  :ensure t
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

(use-package ace-window
	:ensure t)

(use-package magit
  :ensure t
  :bind (("\C-x g" . magit-status))
  )


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t)
 '(package-selected-packages '(ace-window cheatsheet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))


(setq make-backup-files nil)

(load-theme 'manoj-dark t)

;; 顯示配對的括號
(show-paren-mode t)

;; 自動加入右括號及右 '
(electric-pair-mode t)
(setq electric-pair-pairs '(
			    (?\' . ?\')
			    ))

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(defun open-todo-file()
  (interactive)
  (find-file "D:/Ray/TODO/TODOList.org"))

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-cheatsheet)

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

(global-set-key (kbd "<f3>") 'cheatsheet-show)

(global-set-key (kbd "<f4>") 'open-todo-file)

(global-set-key (kbd "M-o") 'ace-window)

;(setq cursor-type 'bar)
(setq-default cursor-type 'bar)


	


