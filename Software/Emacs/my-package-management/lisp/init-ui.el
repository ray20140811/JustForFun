;(require 'init-packages)
(require 'init-usepackages)

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

;; 更改显示字体大小 12pt,且設定字型為Roboto Mono
;(set-face-attribute 'default nil :height 120 :family "Roboto Mono")

;; customize the default font
;;(setq nano-font-family-monospaced "Roboto Mono") ;;只在nano-emacs裡生效
;;(set-default-font "Roboto Mono") ;;不曉得為什麼會出錯

;; Emacs 设置为开启默认全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 自动括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 高亮当前行
(global-hl-line-mode 1)

;; 安装主题 
;(add-to-list 'my-packages 'monokai-theme)

;; 加载主题
;; (load-theme 'monokai 1)
;; (load-theme 'tango-dark 1)
(load-theme 'manoj-dark 1)
;; (load-theme 'nano-dark 1)

;; display time
(display-time)

;; calendar
;(calendar)

(provide 'init-ui)
