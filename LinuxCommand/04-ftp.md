---
title: ftp
---

# 如何透過ftp指令連線至ftp server並下載檔案

## 連線至ftp server

``` bash
$ ftp ftp.gnu.org
```

## 匿名登入

``` bash
Connected to ftp.gnu.org.
220 GNU FTP server ready.
Name (ftp.gnu.org:ray): anonymous
```

## 切換至Passive Mode

輸入passive

``` bash
ftp> passive
Passive mode on.
```

## 查看當前目錄下所有檔案及目錄

``` bash
ftp> ls
```

## 切換目錄

``` bash
ftp> cd
```

## 下載檔案

``` bash
ftp> get filename.txt
```

## 退出ftp

``` bash
ftp> bye 
```