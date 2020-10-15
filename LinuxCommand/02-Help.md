Help
=====

Q:xxx is not in the sudoers file
A:
# Way 1

	ray@linux ~/ # sudo adduser ray
	ray@linux ~/ # sudo vim /etc/sudoers

	# User privilege specification
	root ALL=(ALL:ALL) ALL
	ray ALL=(ALL:ALL) ALL
	
# Way 2

	ray@linux ~/ # sudo adduser ray sudo
