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
  
(use-package better-defaults
  :ensure t
  :config 
  (save-place-mode 1))

(use-package smex
  :ensure t
  :bind (("M-x" . smex))
  :config (smex-initialize))

(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)
         ("C-x C-g" . magit-status)))

(use-package ido
  :ensure t
  :bind ("C-x C-b" . 'ibuffer)
  :init
  (ido-mode 1)
  (ido-everywhere 1))
;  (setq ido-enable-flex-matching t)
;  (setq ido-use-filename-at-point nil)
;  (setq ido-auto-merge-work-directories-length -1)
;  (setq ido-use-virtual-buffers t))

(use-package ido-completing-read+
  :ensure t
  :init
  (ido-ubiquitous-mode 1))
  
(use-package paredit
  :ensure t)

(use-package idle-highlight-mode
  :ensure t)

(use-package find-file-in-project
  :ensure t)

(use-package scpaste
  :ensure t)

(use-package elisp-slime-nav
  :ensure t)

(use-package exwm
  :ensure t)

(use-package god-mode
  :ensure t)

;(require 'god-mode)
;(god-mode)
;(global-set-key (kbd "<escape>") #'god-local-mode)
;(define-key god-local-mode-map (kbd "z") #'repeat)
;(define-key god-local-mode-map (kbd "i") #'god-local-mode)












