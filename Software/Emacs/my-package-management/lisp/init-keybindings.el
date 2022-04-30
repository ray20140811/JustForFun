;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;; 这一行代码，将函数 cheatsheet-show 绑定到 <f3> 键上
(global-set-key (kbd "<f3>") 'cheatsheet-show)

;; 这一行代码，将函数 neotree-toggle 绑定到 <f3> 键上
(global-set-key (kbd "<f8>") 'neotree-toggle)

;; Rebind keys
(with-eval-after-load 'neotree
  (define-key neotree-mode-map (kbd "A") 'neotree-stretch-toggle)
  (define-key neotree-mode-map (kbd "TAB") 'neotree-enter))
  ;(evil-define-key 'evilified neotree-mode-map (kbd "TAB") 'neotree-stretch-toggle)
  ;(evil-define-key 'evilified neotree-mode-map (kbd "o") 'neotree-enter))

(provide 'init-keybindings)

