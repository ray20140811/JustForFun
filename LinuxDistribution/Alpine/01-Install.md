Alpine Linux
============

	localhost login: root
	localhost:~# setup-alpine
	Select keyboard layout [none]: us
	Select variant []: us
	Enter system hostname (short form, e.g. 'foo') [localhost]: alpine
	Which one do you want to initialize? (or '?' or 'done') [eth0]
	Ip address for eth0? (or 'dhcp', 'none', '?') [dhcp]
	Do you want to do any manual network configuration? [no]
	New password:
	Retype password:
	Which timezone are you in? ('?' for list) [UTC] Asia
	What sub-timezone of 'Asia' are you in? ('?' for list) Taipei
	HTTP/FTP proxy URL? (e.g. 'http://proxy:8080', or 'none') [none]
	Which NTP client to run? ('busybox', 'openntpd', 'chrony' or 'none') [chrony]
	Enter mirror number (1-54) or URL to add (or r/f/e/done) [1]: 51
	Which SSH server? ('openssh', 'dropbear' or 'none') [openssh]
	Which disk(s) would you like to use? (or '?' for help or 'none') [none] sda
	How would you like to use it? ('sys', 'data', 'lvm' or '?' for help) [?] sys
	WARNING: Erase the above disk(s) and continue? [y/N]: y
	Installation is complete. Please reboot.
	alpine:~# reboot
