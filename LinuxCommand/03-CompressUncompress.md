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

* .tar.xz

	壓縮:

	```
	ray@JustForFun ~ # tar Jcvf HelloWorld.tar.xz 01-Hello.md 02-World.md
	```

	解壓縮:

	```
	ray@JustForFun ~ # tar Jxvf HelloWorld.tar.xz 
	```
	
	說明: 壓縮時,若後面帶相對路徑,則會把路徑相關的目錄一同建立於壓縮檔內

	```
	ray@JustForFun ~ # tar Jcvf HelloWorld.tar.xz ~/Documents/01-Hello.md ~/Documents/02-World.md
	```

	說明: 解壓縮時,會把壓縮時檔案所在路徑對應的目錄一一建立出來
	```
	ray@JustForFun ~ # tar Jxvf HelloWorld.tar.xz 
	```

	```
	ray@JustForFun ~ # pwd
	/home/ray
	ray@JustForFun ~ # ls
	/home/ray/home/ray/Documents/01-Hello.md
	/home/ray/home/ray/Documents/02-World.md
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
