Arch Linux
----------

* How to completely uninstall a package ?

  `pacman -Rns <PACKAGE_NAME>`

* How to install ssh server ?

  `pacman -S openssh`

  `systemctl start sshd.service`
  
  `systemctl enable sshd.service`

* How to look up ip address?

  `ip addr`

  `ip route`

* How to set up GDM(GNOME Display Manager) start up?

  `systemctl enable gdm.service`

* How to create user account?

  `useradd -m -g users -s /bin/bash <USERNAME>`
  
  -m表示在「/home」目錄下建立以使用者帳號名稱為名的家目錄（Home Directory）
  -g指定使用者為users群組
  -s則是指定shell為「/bin/bash」
  <USERNAME>則是指定使用者帳號名稱

  `passwd <USERNAME>`

* 設定與安裝GNOME 3正體中文環境

  `pacman -Sy ttf-droid fcitx fcitx-chewing`
  
  ttf-droid是中文字形，ttf-droid原本是Google發展給Android使用的開放字形，內含中文字體
  fcitx是中文輸入法框架軟體，fcitx-chewing則是fcitx框架下的注音輸入法
  
* 設定語系

首先編輯「/etc/locale.gen」，將其中的「zh_TW.UTF-8 UTF-8」這一行註解拿掉，以打開正體UTF-8中文語系的設定，接著編輯「/etc/locale.conf」，將預設的語系設定「LANG=en_US.UTF-8」這一行改成「LANG=zh_TW.UTF-8」。最後執行「locale-gen」指令，產生zh_TW.UTF-8的語系資料。

* 設定fcitx輸入法

用「su <USERNAME>」指令切換到<USERNAME>帳號，然後編輯.profile檔案，將底下這三行啟動fcitx的內容輸入到.profile設定中：

  `export GTK_IM_MODULE=fcitx`
  `export QT_IM_MODULE=fcitx`
  `export XMODIFIERS="@im=fcitx`

* 〔Ctrl〕+〔Space〕熱鍵來切換中英文輸入狀態
   如果有多個輸入法，可使用〔Ctrl〕+〔Shift〕熱鍵來切換不同輸入法。
   
