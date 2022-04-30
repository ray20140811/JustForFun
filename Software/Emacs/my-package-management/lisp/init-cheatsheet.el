(require 'cheatsheet)

;; cheatsheet

;; Emacs Common
;(cheatsheet-add :group 'Common
;                :key "Key"
;                :description "Description")

(cheatsheet-add-group 'Common
                      '(:key "C-y" :description "paste the text")
                      '(:key "C-w" :description "cut the text")
		      '(:key "M-w" :description "copy text")
		      '(:key "C-SPC" :description "mark the text"))

;; Macro
;(cheatsheet-add :group 'Macro
;                :key "Key"
;                :description "Description")

(cheatsheet-add-group 'Macro
		      '(:key "C-x C-k r" :description "apply-macro-to-region-line")
                      '(:key "e" :description "repeat run Macro")
                      '(:key "C-x e" :description "run Macro")
                      '(:key "C-x )" :description "end Macro Recording")
		      '(:key "C-x (" :description "start Macro Recording"))

;; evil-mode
(cheatsheet-add-group 'evil-mode
		'(:key "x" :description "VISUAL-BLOCK delete")
		'(:key "r" :description "VISUAL-BLOCK replace")
		'(:key "c" :description "VISUAL-BLOCK change")
		'(:key "I" :description "VISUAL-BLOCK insert")
		'(:key "C-v" :description "VISUAL-BLOCK"))

;; org-mode
;(cheatsheet-add :group 'org-mode
;                :key "C-c ."
;                :description "TimeStamp")

(cheatsheet-add-group 'org-mode
		'(:key "C-c ." :description "TimeStamp"))


;; neotree
(cheatsheet-add-group 'neotree
		'(:key "C-c C-c" :description "change the root directory")
		'(:key "C-c C-p" :description "copy a file or directory")
		'(:key "C-c C-r" :description "rename a file or directory")
		'(:key "C-c C-d" :description "delete a file or directory")
		'(:key "C-c C-n" :description "create a file or directory if filename ends with a /")
		'(:key "A" :description "Maximize/Minimize the NoeTree Window")
		'(:key "g" :description "refresh")
		'(:key "U" :description "go up a directory")
		'(:key "SPC" :description "open current item"))


;; Japanese Vocabulary
;(cheatsheet-add :group 'L23
;                :key "Japanese"
;                :description "Chinese")

(cheatsheet-add-group 'L23
                      '(:key "ききます" :description "問")
                      '(:key "まわします" :description "轉動")
		      '(:key "ひきます" :description "拉")
      		      '(:key "かえます" :description "改變")
		      '(:key "さわります" :description "摸,觸碰"))
;		      '(:key "でます" :description "出來")
;		      '(:key "あるきます" :description "走")
;		      '(:key "わたります" :description "過")
;      		      '(:key "まがります" :description "轉彎,[向右]轉")
;		      '(:key "さびしい" :description "寂寞")
;		      '(:key "おゆ" :description "熱水")
;		      '(:key "おと" :description "聲音")		      
;		      '(:key "サイズ" :description "尺寸")
;		      '(:key "こしょう" :description "故障")
;		      '(:key "みち" :description "道路")
;		      '(:key "こうさてん" :description "十字路口")
;		      '(:key "しんごう" :description "紅綠燈,號誌燈")
;		      '(:key "かど" :description "轉角")		      		      
;		      '(:key "はし" :description "橋")
;		      '(:key "ちゅうしゃじょう" :description "停車場")
;		      '(:key "たてもの" :description "建築物")
;		      '(:key "なんかいも" :description "好幾次")
;		      '(:key "…め" :description "第...個(指順序)")
;		      '(:key "しょうとくたいし" :description "聖德太子")
;		      '(:key "ほうりゅうじ" :description "法隆寺"))
				


;(global-set-key (kbd "<f3>") 'cheatsheet-show)

(provide 'init-cheatsheet)
