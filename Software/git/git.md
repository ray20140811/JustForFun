* 檔案還原

** git checkout -- <file> 

*** 使用時機: 尚未git add,想將檔案恢復尚未編輯前的內容
*** 使用方法:

先修改檔案變成可執行

```
$ git status
$ chmod +x add-defs
$ git status
```
此時會看到檔案顯示

```
On branch master
Your branch is up-to-date with 'origin/master'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        modified:   add-defs

no changes added to commit (use "git add" and/or "git commit -a")
```

接著可以透過`git checkout -- <file>`進行還原

```
$ git checkout -- add-defs
$ git status
On branch master
Your branch is up-to-date with 'origin/master'.
nothing to commit, working tree clean
```


** git reset HEAD <file> 

*** 使用時機: 已經git add,但反悔想將檔案變成尚未git add前的狀態
*** 使用方法:

先修改檔案變成可執行

```
$ chmod +x add-defs
$ git add .
```

檢視目前狀態

```
$ git status
On branch master
Your branch is up-to-date with 'origin/master'.
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        modified:   add-defs
```

接著透過`git reset HEAD <file>`進行還原

```
$ git reset HEAD add-defs
Unstaged changes after reset:
M       add-defs
```

```
$ git status
On branch master
Your branch is up-to-date with 'origin/master'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        modified:   add-defs

no changes added to commit (use "git add" and/or "git commit -a")
```
