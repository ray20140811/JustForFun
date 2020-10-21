atom
====

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
