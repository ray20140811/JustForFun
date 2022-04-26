(require 'cheatsheet)

;; cheatsheet
(cheatsheet-add :group 'Common
                :key "C-w"
                :description "cut context")

(cheatsheet-add-group 'Common
                      '(:key "C-y" :description "paste context")
		      '(:key "M-w" :description "copy context")
		      '(:key "C-SPC" :description "mark context"))


(cheatsheet-add :group 'org-mode
                :key "C-c ."
                :description "TimeStamp")

(cheatsheet-add :group 'L23
                :key "ききます"
                :description "問")

(cheatsheet-add-group 'L23
                      '(:key "まわします" :description "轉動")
		      '(:key "ひきます" :description "拉")
      		      '(:key "かえます" :description "改變")
		      '(:key "さわります" :description "摸,觸碰")
		      '(:key "でます" :description "出來")
		      '(:key "あるきます" :description "走")
		      '(:key "わたります" :description "過")
      		      '(:key "まがります" :description "轉彎,[向右]轉")
		      '(:key "さびしい" :description "寂寞")
		      '(:key "おゆ" :description "熱水")
		      '(:key "おと" :description "聲音")		      
		      '(:key "サイズ" :description "尺寸")
		      '(:key "こしょう" :description "故障")
		      '(:key "みち" :description "道路")
		      '(:key "こうさてん" :description "十字路口")
		      '(:key "しんごう" :description "紅綠燈,號誌燈")
		      '(:key "かど" :description "轉角")		      		      
		      '(:key "はし" :description "橋")
		      '(:key "ちゅうしゃじょう" :description "停車場")
		      '(:key "たてもの" :description "建築物")
		      '(:key "なんかいも" :description "好幾次")
		      '(:key "…め" :description "第...個(指順序)")
		      '(:key "しょうとくたいし" :description "聖德太子")
		      '(:key "ほうりゅうじ" :description "法隆寺"))
				


(global-set-key (kbd "<f3>") 'cheatsheet-show)

(provide 'init-cheatsheet)
