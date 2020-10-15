Linux Command
=============
Basic
-----
* pushd /path

功能和cd類似,用來改變當前的路徑.可以用popd回到原來的路徑.	

	
	ray@linux ~ # pwd
	/home/ray
	ray@linux ~/Project/GitHub # pushd ~/Project/GitHub/

	ray@linux ~ # pwd
	/home/ray/Project/GitHub
* popd
	
	ray@linux ~ # popd
	ray@linux ~ # pwd
	/home/ray

* file

查看檔案屬性




