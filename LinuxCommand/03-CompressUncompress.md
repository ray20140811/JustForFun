Compress/Uncompress Command
=============

tar
-----

* .tar 
	```
	ray@JustForFun ~ # tar cvf filename.tar /path/to/dir 
	```
	```
	ray@JustForFun ~ # tar xvf filename.tar  
	```

	e.g.

	```
	ray@JustForFun ~ # tar cvf linuxcommand.tar 01-Basic.md 02-Help.md 03-CompressUncompress.md 
	```
	```
	ray@JustForFun ~ # tar xvf linuxcommand.tar  
	```

	
* .gz
	```
	ray@JustForFun ~ # gzip filename 
	```

	```
	ray@JustForFun ~ # gzip -d filename.gz
	ray@JustForFun ~ # gunzip  filename.gz
	```

* .tar.gz

	```
	ray@JustForFun ~ # tar zcvf filename.tar.gz /path/to/dir
	ray@JustForFun ~ # tar zxvf filename.tar.gz 
	```

* .bz2
	```
	ray@JustForFun ~ # bzip2 -z filename
	```
	```
	ray@JustForFun ~ # bzip2 -d filename.bz2
	ray@JustForFun ~ # bunzip2  filename.bz2
	```
	
* .tar.bz2

	```
	ray@JustForFun ~ # tar jcvf filename.tar.bz2 /path/to/dir
	ray@JustForFun ~ # tar jxvf filename.tar.bz2 
	```
	
* .bz

	```
	ray@JustForFun ~ # bzip2 -d filename.bz 
	ray@JustForFun ~ # bunzip2  filename.bz 
	```
	
* .tar.bz

	```
	ray@JustForFun ~ # tar jxvf filename.tar.bz 
	```
	
* .Z

	```
	ray@JustForFun ~ # compress filename 
	ray@JustForFun ~ # uncompress filename.Z
	```
	
* .tar.Z

	```
	ray@JustForFun ~ # tar Zcvf filename.tar.Z /path/to/dir
	ray@JustForFun ~ # tar Zxvf filename.tar.Z
	```
	
* .tgz

	```
	ray@JustForFun ~ # tar zxvf filename.tgz
	```
	
* .tar.tgz

	```
	ray@JustForFun ~ # tar zcvf filename.tar.tgz fileame
	ray@JustForFun ~ # tar zxvf filename.tar.tgz 
	```
	
* .zip

	```
	ray@JustForFun ~ # zip filename.zip /path/to/dir
	ray@JustForFun ~ # unzip filename.zip 
	```
	
* .rar

	```
	ray@JustForFun ~ # rar e filename.rar
	ray@JustForFun ~ # rar a filename.rar
	```
	
* .lha

	```
	ray@JustForFun ~ # lha -a filename.lha filename
	ray@JustForFun ~ # lha -e filename.lha 
	```
