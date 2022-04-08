docker
======

常用指令
-------
* docker version
* docker image ls
* docker container ls
* docker pull hello-world
* docker run hello-world
* docker run --name my-hello hello-world

* docker run -it ubuntu bash 
  下載並運行

* docker run -it --name my-linux-container ubuntu bash

* docker container ls
* docker container kill <CONTAINER_ID>

* docker ps -a

* docker rm my-hello
* docker rm $(docker ps -a -f status=exited -q)
* sudo docker rm $(sudo docker ps -a -f status=exited -q)

* docker stop my-hello

* docker run -it --name my-linux-container --rm -v /Data/Private/Document/Project/learning/Docker:/my-data ubuntu bash

* docker images

	mkdir ~/Project/Docker
	cd ~/Project/Docker
	mkdir my-container-tutorial 
	cd my-container-tutorial
	vim Dockerfile
	FROM ubuntu
	CMD echo "Hello Ray"
	docker build -t my-ubuntu-image .
	docker images
	docker run my-ubuntu-image
	docker ps -a
	docker build -t my-ubuntu-image .
	docker run -it my-ubuntu-image


