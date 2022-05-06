;; ~/.emacs.d/lisp/init-packages.el
;;
;; __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |

;; 使用use-package
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; 如果未安裝 use-package，安裝它
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; 使用自動更新套件
(use-package auto-package-update
  :ensure t
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

(use-package ace-window
  :ensure t
  :bind (("M-o" . ace-window)))
  
(use-package better-defaults
  :ensure t
  :config 
  (save-place-mode 1))

(use-package cheatsheet
  :ensure t)

(use-package company
  :ensure t
  :config
  (global-company-mode t)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3)
  (setq company-backends
        '((company-files
           company-keywords
           company-capf
           company-yasnippet)
          (company-abbrev company-dabbrev))))  
  
(use-package counsel
  :ensure t
  :config
  (counsel-mode t)
  :bind (("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)))  
		 
(use-package evil
  :ensure t
  :config
  (evil-mode t))

(use-package hungry-delete
  :ensure t
  :config
  (hungry-delete-mode t))		 

(use-package js2-mode
  :ensure t
  :config
  (setq auto-mode-alist
      (append
       '(("\\.html\\'" . web-mode))
       auto-mode-alist)))		 

(use-package magit
  :ensure t
  :bind (("\C-x g" . magit-status)))
  
(use-package markdown-mode
  :ensure t)
            
(use-package nano-theme
  :ensure t)		  

(use-package nano-modeline
  :ensure t		  
  :config
  (nano-modeline-mode t))

(use-package neotree
  :ensure t)		  
  
(use-package nodejs-repl  
  :ensure t)		  

(use-package smartparens
  :ensure t
  :config
  (smartparens-mode t))		  
  
(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)))		
  

(use-package web-mode
  :ensure t
  :config
  (setq auto-mode-alist
      (append
       '(("\\.html\\'" . web-mode))
       auto-mode-alist)))		 

;(use-package which-key
;  :ensure t
;  :config
;  (which-key-mode t))

;; 文件末尾
(provide 'init-usepackages)

