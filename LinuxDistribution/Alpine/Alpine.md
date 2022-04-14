Alpine
======

# run in docker

	`docker pull alpine`

	`docker run -it alpine ash`

# package command

	`apk info`

	`apk updage`

	`apk upgrade`
	
	`apk add package-name`

	`apk del package-name`


	`rc-update add service_name runlevel_name`
	
	`rc-update add nginx default`


	`rc-service service_name start/stop/restart`

	`rc-service nginx stop`

# Apache setup

	`apk add apache2`

	`rc-service apache2 start`

##	ash: rc-service: not found

	`apk add openrc --no-cache`

	 `rc-service apache2 start`

## Consider permanently enabling apache on startup 

	`rc-update add apache2`

## Edit the configuration in /etc/apache2/, then run rc-service apache2 restart to enable your changes
	
# reboot/halt/poweroff

	`reboot`
	
	`halt`
	
	`poweroff`

# [How to install OpenSSH Server on Alpine Linux](https://www.cyberciti.biz/faq/how-to-install-openssh-server-on-alpine-linux-including-docker/)

	1. apk search openssh
	
	2. apk add openssh
	
	3. rc-update add sshd
	
	4. service sshd start
	
	5. vi /etc/ssh/sshd_config
	
	6. Awall firewall on Alpine Linux
	
	7. ssh root@alpine-server-ip-here
	
