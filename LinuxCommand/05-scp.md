---
title: scp
---

# 如何透過scp指令上傳或下載檔案

## 將本地端的檔案複製到遠端

``` bash
$ scp file1 ray@123.45.67.89:/home/ray
```

## 將遠端的檔案複製到本地端

``` bash
$ scp -p user@123.45.67.89:/path/file /path/file
```

