atom
====

vue packages
--------------
* atom-vue
* language-vue

markdown packages
-----------------
* markdown preview (markdown預覽)
* markdown-toc (主要用來快速生成markdown目錄)
* markdown-preview-enhanced (含同步滾動預覽，Latex公式預覽)
* language-markdown (程式碼增強)
* markdown-img-paste (剪貼簿圖片快速貼上到md檔案)
* insert-timestamp (md檔案中快速插入當前時間,寫部落格或日誌常用)
* markdown-table-editor (md檔案快速生成表格)
* markdown-themeable-pdf 與 pdf-view (pdf生成匯出與pdf預覽)

Useful Packages
---------------
* atom-html-preview (HTML預覽)
* autosave-onchange (自動保存)
* view-in-browser (用瀏覽器開啟檔案)
* vim-mode-plus (vim)
* highlight-selected (高亮已選擇的項目，可以幫助你找到它。)
* Sublime-Style-Column-Selection (ALT+滑鼠左鍵 垂直選取)

How to uninstall packages?
--------------------------

	apm list
	apm uninstall PACKAGENAME

or

	rm -rf ~/.atom/packages/PACKAGENAME


How to auto-indent code in the Atom editor?
-------------------------------------------
I found the option in the menu, under Edit > Lines > Auto Indent. It doesn't seem to have a default keymap bound.

You could try to add a key mapping (Atom > Open Your Keymap [on Windows: File > Settings > Keybindings > "your keymap file"]) like this one:

	'atom-text-editor':
		'cmd-alt-l': 'editor:auto-indent'

For Windows:

	'atom-text-editor':
		'ctrl-alt-l': 'editor:auto-indent'

How to auto reload changes files?
--------------------------------
Install [file-watcher](https://atom.io/packages/file-watcher) Package

	apm install file-watcher

"File" -> "Setting" -> "Package" -> "Community Packages" -> "file-watcher" -> "Setting"

	select "Reload Automatically""""""""""""""")]''''''''''''""])'
