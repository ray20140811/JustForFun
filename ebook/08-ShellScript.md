https://www.twbsd.org/cht/book/ch24.htm



第二十四章 Shell Script

身為 UNIX 系統管理者除了要熟悉 UNIX 指令外，我們最好學會幾種 scripts 語言，例如 shell script 或 perl。學會 script 語言後，我們就可以將日常的系統管理工作寫成一支執行檔，如此一來，在管理系統時就可以更加靈活。

Shell script 是最基本的 script 語言，它是一堆 UNIX 指令的集合。本章將介紹 Shell script 的基本功能及語法，期望讀者可以經由學習 Shell scripts 讓使用 UNIX 系統時可以更加得心應手。

24.1 概論

Shell Script 是一個類似 MS Windows 中 .bat 檔的東西，簡單的說，Shell Script 就是將一堆 shell 中的指令放在一個文字檔中來執行。因此，為了能寫出一個 shell Script，你必須先對 UNIX 指令有初步的認識。身為一個 UNIX 系統的管理者，一定要會使用 shell script 來使管理工作更加容易。

一般我們會將 Shell Script 的副檔名命名為 .sh，但並非一定要這麼做，這樣做只是為了要讓我們更容易管理這些檔案。在介紹如何 Shell Script 的內容之前，我們先來看如何寫出一個 Shell Script 並執行它。假設我們要寫一個名為 test.sh 的 Shell Script，首先用你習慣使用的文字編輯軟體來開一個檔案名為 test.sh 內容如下：

#!/bin/sh
echo Hello world!!

第一行是必需的，用來定義你要使用的 shell。這裡我們定義要使用的是 Bourne Shell，其所在路徑是 /bin/sh。在 UNIX 系統中有許多不同的 Shell 可以使用，而每個 Shell 的特性及用法都有些許的不同。因此，在寫 Shell Script 時，我們會針對 Bourne Shell (sh) 來寫，因為 sh 是所有 UNIX 系統中都會有的 Shell。就算你執行 Shell Script 時的環境不是使用 sh，只要加上第一行 #!/bin/sh 就可以在執行此 Shell Script 時使用 sh。而第二行的 echo 代表列出一個字串，我們常使用它來輸出資訊。將 test.sh 存檔後，我們就可以用下列其中一種方式執行它：

1. 轉向輸入

$ sh < test.sh

2. 如果要輸入參數的話，第一種方式便不適用，可以改用這種方法。<arguments> 就是我們要輸入的參數，在上面的 test.sh 中並不需要輸入參數：

$ sh test.sh <arguments>

3.你也可以改變 test.sh 的權限，將它變成可以獨立執行的檔案，這樣就可以只打 test.sh 來執行它：

$ chmod a+x test.sh

$ ./test.sh

在 Shell Script 中，你們可以使用 # 為註解，在 # 後面的字串都將被視為註解而被式忽略。而分號 ; 則代表新的一行，例如打 ls;ls -d 代表二個指令。另外，我們可以使用變數、流程控制、甚至是副函式來使程式更加靈活。以下的各章節我們會詳細加以說明。

24.2 變數的使用

24.2.1 變數的使用

我們知道 Shell Script 是使用一堆指令拼湊而成，為了方便說明及練習起見，我們不使用編輯檔案的方式來執行，而改以在命令列中打我們要的指令。首先，先打 sh 來進入 Bourne Shell。

% sh
$

在打了 sh 之後，會進入 Bourne Shell，其一般使用者的提示字元為 $。以下各指令開頭的 $ 表示提示字元，而 $ 之後的粗體字才是我們輸入的字串。

在 Shell Script 中，所有的變數都視為字串，因此並不需要在定義變數前先定義變數類型。在 Shell 中定義和使用變數時有些許的差異。例如，我們定義一個變數 color 並令它的值為 red，接著使用 echo 來印出變數 color 的值：

$ color=red
$ echo $color
red

在這裡，以 color=red 來定義變數 color 的值為 red，並以 echo $color 來印出 color 這一個變數。在定義變數時，不必加 $，但是在使用它時，必須加上 $。請注意，在等號的二邊不可以有空白，否則將出現錯誤 ，系統會誤以為你要執行一個指令。

我們再介紹一個範例：

$ docpath=/home/td/src/doc
$ echo $docpath
/home/td/src/doc
$ ls $docpath
abc.txt abc2.txt semmt.doc
$ ls $docpaht/*.txt
abc.txt abc2.txt

這裡我們定義了變數 docpath 的值為 /home/td/src/doc，並印出它。接著我們使用 ls 這個指令來印出變數 docpath 目錄中所有檔案。 再以 ls $docpath/*.txt 來印出 /home/td/src/doc/ 目錄下所有副檔名為 .txt 的檔案。

我們再來看一個例子，說明如何使用變數來定義變數：

$ tmppath=/tmp
$ tmpfile=$tmppath/abc.txt
$ echo $tmpfile
/tmp/abc.txt

另外，我們也可以使用指令輸出成為變數，請注意這裡使用的二個 ` 是位於鍵盤左上角的 ` ，在 shell script 中，使用 ` 包起來的代表執行該指令：

$ now=`date`
$ echo $now
Mon Jan 14 09:30:14 CST 2002

如果在變數之後有其他字串時，要使用下列方式來使用變數：

$ light=dark
$ echo ${light}blue
darkblue
$ echo "$light"blue
darkblue

這裡雙引號中的字將會被程式解讀，如果是使用單引號將直接印出 $light 而非 dark。

經由上面幾個簡單的例子，相信您對變數的使用已有初步的認識。另外有一些我們必須注意的事情：

$ color=blue
$ echo $color
blue
$ echo "$color"
blue
$ echo '$color'
$color
$ echo \$color
$color
$ echo one two three
one two three
$ echo "one two three"
one two three

我們可以看到上面各個執行結果不大相同。在 Shell Script 中，雙引號 " 內容中的特殊字元不會被忽略，而單引號中的所有特殊字元將被忽略。另外，\ 之後的一個字元將被視為普通字串。

如果您希望使用者能在程式執行到一半時輸入一個變數的值，您可以使用 read 這個指令。請看以下的範例：

#!/bin/sh
printf "Please input your name:"
read Name
echo "Your name is $Name"

由於 echo 指令內定會自動換行，所以我們使用 printf 這個指令來輸出字串。我們將上述內容存成檔案 input.sh，接著使用下列指令來執行：

$ sh input.sh
Please input your name:Alex
Your name is Alex

您可以看到變數 Name 已被設為您所輸入的字串了。

24.2.2 程式會自動定義的變數

在執行 Shell Script 時，程式會自動產生一些變數：
變數名稱 	說明
$? 	表示上一個指令的離開狀況，一般指令正常離開會傳回 0。不正常離開則會傳回 1、2 等數值。
$$ 	這一個 shell 的 process ID number
$! 	最後一個在背景執行的程式的 process number
$- 	這個參數包含了傳遞給 shell 旗標 (flag)。
$1 	代表第一個參數，$2 則為第二個參數，依此類推。而 $0 為這個 shell script 的檔名。
$# 	執行時，給這個 Shell Script 參數的個數
$* 	包含所有輸入的參數，$@ 即代表 $1, $2,....直到所有參數結束。$* 將所有參數無間隔的連在一起，存成一個單一的參數。也就是說 $* 代表了 "$1 $2 $3..."。
$@ 	包含所有輸入的參數，$@ 即代表 $1, $2,....直到所有參數結束。$@ 用將所有參數以空白為間隔，存在 $@ 中。也就是說 $@ 代表了 "$1" "$2" "$3"....。

以下我們舉幾個例子來說明：

$ ls -d /home
/home
$ echo $?
0
$ ls /home/aaa/bb/ccc
/home/aaa/bb/cc: No such file or directory
$ echo $?
2
$ echo $?
0

上面例子中的第一行是 ls，我們可以看到存在一個目錄 /home，接者 echo $? 時，出現 0 表示上一次的命令正常結束。接著我們 ls 一個不存在的目錄，再看 $? 這個變數變成 2，表示上一次執行離開的結果不正常。最後一個 echo $? 所得到的結果是 0，因為上一次執行 echo 正常顯示 2。

如果寫一個檔案名為 abc.sh，內容如下：

#!/bin/sh
echo $#: $1 $2 $3 $4 $5 $6 $7 $8 $9
echo $@

接著以下列指令來執行該檔案：

$ chmod a+x abc.sh
$ ./abc.sh a "b c d" e f
4:a b c d e f
a b c d e f

上面最後二行即為執行結果。我們可以看到 $# 即為參數的個數，而 $1, $2, $3...分別代表了輸入的參數 "a", "b c d", "e", "f"，而最後的 $@ 則是所有參數。

24.2.3 系統內定的標準變數

你可以使用 set 這個指令來看目前系統中內定了哪些參數。一般而言會有 $HOME, $SHELL, $USER, $PATH 等。

$ echo $HOME
/home/jack
$ echo $PATH
/usr/bin:/usr/sbin:/bin

24.2.4 空變數的處理

如果程式執行時，有一個變數的值尚未被給定，你可以利用下列方式來設定對於這種情形提出警告：

$ echo $number one
one
$ set -u
$ echo $number one
sh: ERROR: number: Parameter not set

在 set -u 之後，如果變數尚未設定，則會提出警告。你也可以利用下列的方式來處理一些空變數及變數的代換：
運算式 	說明
${var:-word} 	如果變數 var 尚未設定或是 null，則將使用 word 這個值，但不改變 var 變數的內容。
${var:=word} 	如果變數 var 尚未設定或是 null，則變數 var 的內容將等於 word 這個字串，並使用這個新的值。
${var:?word} 	如果變數 var 已經設定了，而且不是 null，則將使用變數 var。否則則印出 word 這個字串，並強制離開程式。我們可以設定一個字串 "Parameter null or not set" 來在變數未設定時印出，並終止程式。
${var:+word} 	如果變數 var 已經設定了，而且不是 null，則以 word 這個字串取代它，否則就不取代。

我們以下面的例子來說明：

$ echo $name Wang
Wang
$ echo ${name:-Jack} Wang
Jack Wang
$ echo $name Wang
Wang

上面的例子中，變數 $name 並未被取代，而下面的例子中，$name 將被取代：

$ echo $name Wang
Wang
$ echo ${name:=Jack} Wang
Jack Wang
$ echo $name Wang
Jack Wang

24.3 運算符號

24.3.1 四則運算

在 shell 中的四則運算必須使用 expr 這個指令來輔助。因為這是一個指令，所以如果要將結果指定給變數，必須使用 ` 包起來。請注意，在 + - * / 的二邊都有空白，如果沒有空白將產生錯誤：

$ expr 5 -2
3
$ sum=`expr 5 + 10`
$ echo $sum
15
$ sum=`expr $sum / 3`
$ echo $sum
5

還有一個要特別注意的是乘號 * 在用 expr 運算時，不可只寫 *。因為 * 有其他意義，所以要使用 \* 來代表。另外，也可以用 % 來求餘數。

$ count=`expr 5 \* 3`
$ echo $count
$ echo `expr $count % 3`
5

我們再列出更多使用 expr 指令的方式，下列表中為可以放在指令 expr 之後的表達式。有的符號有特殊意義，必須以 \ 將它的特殊意義去除，例如 \*，否則必須用單引號將它括起來，如 '*'：
類別 	語法 	說明
條件判斷 	expr1 \| expr2 	如果 expr1 不是零或 null 則傳回 expr1，否則傳回 expr2。
expr1 \& expr2 	如果 expr1 及 expr2 都不為零或 null，則傳回 expr1，否則傳回 0。
四則運算 	expr1 + expr2 	傳回 expr1 加 expr2 後的值。
expr1 - expr2 	傳回 expr1 減 expr2 後的值。
expr1\* expr2 	傳回 expr1 乘 expr2 後的值。
expr1 / expr2 	傳回 expr1 除 expr2 後的值。
expr1 % expr2 	傳回 expr1 除 expr2 的餘數。
大小判斷 	expr1 \> expr2 	如果 expr1 大於 expr2 則傳回 1，否則傳回 0。如果 expr1 及 expr2 都是數字，則是以數字大小判斷，否則是以文字判斷。以下皆同。
expr1 \< expr2 	如果 expr1 小於 expr2 則傳回 1，否則傳回 0。
expr1 = expr2 	如果 expr1 等於 expr2 則傳回 1，否則傳回 0。
expr1 != expr2 	如果 expr1 不等於 expr2 則傳回 1，否則傳回 0。
expr1 \>= expr2 	如果 expr1 大於或等於 expr2 則傳回 1，否則傳回 0。
expr1 \<= expr2 	如果 expr1 小於或等於 expr2 則傳回 1，否則傳回 0。
文字處理 	expr1 : expr2 	比較一固定字串，即 regular expression。可以使用下列字元來輔助：

. 匹配一個字元。

$ 找字串的結尾。

[list] 找符合 list 中的任何字串。

* 找尋 0 個或一個以上在 * 之前的字。

\( \) 傳回括號中所匹配的字串。

我們針對比較複雜的文字處理部份再加以舉例：

$ tty
ttyp0
$ expr `tty` : ".*\(..\)\$"
p0
$ expr `tty` : '.*\(..\)$'
p0

上面執行 tty 的結果是 ttyp0，而在 expr 中，在 : 右側的運算式中，先找 .* 表示0個或一個以上任何字元，傳回之後在結尾 ($) 時的二個字元 \(..\)。在第一個 expr 的式子中，因為使用雙引號，所以在 $ 之前要用一個 \ 來去除 $ 的特殊意義，而第二個 expr 是使用單引號，在單引號內的字都失去了特殊意義，所以在 $ 之前不必加 \。

除了使用 expr 外，我們還可以使用下列這種特殊語法：

$ a=10
$ b=5
$ c=$((${a}+${b}))
$ echo $c
15
$ c=$((${a}*${b}))
$ echo $c
50

我們可以使用 $(()) 將運算式放在括號中，即可達到運算的功能。

24.3.2 簡單的條件判斷

最簡單的條件判斷是以 && 及 || 這二個符號來表示。

$ ls /home && echo found
found
$ ls /dev/aaaa && echo found
ls: /dev/aaaa: No such file or directory
$ ls -d /home || echo not found
/home
$ ls /dev/aaaa && echo not found
ls: /dev/aaaa: No such file or directory

條件式 	說明
a && b 	如果 a 是真，則執行 b。如果 a 是假，則不執行 b。
a || b 	如果 a 是假，則執行 b。如果 a 是真，則不執行 b。

24.3.3 以 test 來比較字串及數字

我們說過 Shell Script 是一堆指令的組合，所以在比較字串及數字時一樣是經由系統指令來達成。這裡我們使用 test 及 [ 來做運算，運算所傳回的結果是真 (true) 或假 ( false)。我們可以將它應用在條件判斷上。test 和 [ 都是一個指令，我們可以使用 test 並在其後加上下表中的參數來判斷真假。或者也可以使用 [ 表達式 ] 來替代 test，要注意的是 [ ] 中的空白間隔。
表達式 	說明
-n str1 	如果字串 str1 的長度大於 0 則傳回 true。
-z str1 	如果字串 str1 的長度等於 0 則傳回 true。
str1 	如果字串 str1 不是 null 則傳回 true。
str1 = str2 	如果 str1 等於 str2 則傳回 true。等號二邊有空白。
str1 != str2 	如果 str1 不等於 str2 則傳回 true。!= 的二邊有空白。
a -eq b 	Equal，等於。a 等於 b 則傳回真 (true)。
a -ne b 	Not equal，不等於。a 不等於 b 則傳回真 (true)。
a -gt b 	Grwater than，大於。a 大於 b 則傳回真 (true)。
a -lt b 	Less Than，小於。a 小於 b 則傳回真 (true)。
a -ge b 	Greater or equal，大於或等於。a 大於或等於 b 則傳回真 (true)。
a -le b 	Less or equal，小於或等於。a 小於或等於 b 則傳回真 (true)。

我們舉例來說明：

$ test 5 -eq 5 && echo true
true
$ test abc!=cde && echo true
ture
$ [ 6 -lt 10 ] && echo true
ture

$ pwd
/home
$ echo $HOME
/home/jack
$ [ $HOME = `pwd` ] || echo Not home now
Not home now

24.3.4 以 test 來處理檔案

我們也可以使用 test 及 [ 來判斷一個檔案的類型。下表中為其參數：
用法 	說明
-d file 	如果 file 為目錄則傳回真(true)。
-f file 	如果 file 是一般的檔案則傳回真(true)。
-L file 	如果 file 是連結檔則傳回真(true)。
-b file 	如果 file 是區塊特別檔則傳回真(true)。
-c file 	如果 file 是字元特別檔則傳回真(true)。
-u file 	如果file 的 SUID 己設定則傳回真(true)。
-g file 	如果file 的 SGID 己設定則傳回真(true)。
-k file 	如果file 的 sticky bit 己設定則傳回真(true)。
-s file 	如果 file 的檔案長度大於 0 則傳回真(true)。
-r file 	如果 file 可以讀則傳回真(true)。
-w file 	如果 file 可以寫則傳回真(true)。
-x file 	如果 file 可以執行則傳回真(true)。

我們舉例來說明：

$ [ -d /bin ] && echo /bin is a directory
/bin is a directory
$ test -r /etc/motd && echo /etc/motd is readable
/etc/motd is readable

第一個指令測試 /bin 是否存在，而且是一個目錄，如果是則執行 echo 傳回一個字串。第二個指令是測試 /etc/motd 是否可以被讀取，如果是則執行 echo 傳回一個字串。

24.4 內建指令

在 Shell 中有一些內建的指令，這些內建的指令如流程控制及 cd 等指令是 Shell 中的必備元素。另外還有一些為了提高執行效率的指令，如 test、echo 等。有的內建指令在系統中也有同樣名稱不同版本的相同指令，但是如 test、echo 等在執行時會偽裝成是在 /bin 中的指令。

在寫 shell script 時，要注意指令是否存在。下列即為常見的內建指令：
指令 	說明
exit 	離開程式，如果在 exit 之後有加上數字，表示傳回值，如：exit 0。在 UNIX 系統下，當程式正常結束，會傳回一個值 0，如果不正常結束則會傳回一個非 0 的數字。
. file 	dot 指令，在 shell 中可以使用 "." 來呼叫一個外部檔案，例如 . /etc/rc.conf 或 . .profile。注意 . 和其後的指令中間有空白。
echo 	印出一個字串。如果要使用非 shell 內建的 echo 則打 /bin/echo 來使用。
pwd 	顯示目前所在目錄。
read var ... 	從標準輸入 (通常是鍵盤) 讀入一行，然後將第一個字指派給跟在 read 之後的第一個參數，第二個字給第二個參數，依此類推，直到最後將所有字給最後一個參數。如果只有一個參數則將整行都給第一個參數。
readonly [var..] 	readonly 這個指令如果沒有加參數則顯示目前唯讀的變數。如果有加變數的話，則將該變數設定為唯讀。
return [n] 	離開所在函式，如果在其後有加數字的話，則傳回該數字。和 exit 一樣，這個指令可以傳回該函式的執行結果，0 表示正常結束。
set 	將 $1 到 $n 設定為其參數的字。例如：

$ date
Mon Jan 21 11:19 CST 2002
$ set `date`
$ echo $4
11:19
wait [n] 	等待在執行程序 (PID) 為 n 的背景程式結束，如果沒有加參數 n 則等待所有背景程式結束。
exec command 	執行一個外部程式，通常用於要改變到另一個 shell 或是執行不同的使用者者介面，如：

exec /usr/local/bin/startkde
export [var] 	設定環境變數，如果沒有參數則印出新的環境變數。
eval command 	把參數當成 shell 命令來執行，如：

$ a=c; b=m; c=d; cmd=date
$ eval $`echo $a$b$c`
Mon Jan 21 11:19 CST 2002

24.5 流程控制

24.5.1 if 的條件判斷

基本語法：

if condition-list
      then list
elif condition-list
      then list
else list
fi

範例一：

#!/bin/sh
if test -r /etc/motd
      then cat /etc/motd
else  echo "There is not motd or file is not readable"
fi

說明：上面這一個程式是檢查 /etc/motd 這個檔案是否可以讀，如果可以則印出該檔案，否則印出檔案不可讀。

範例二：

$ ee test.sh

#!/bin/sh
if [ $1 -gt 5 ]
      then echo " $1 is bigger then 5"
elif [ $1 -ge 0 ]
      then echo " $1 is between 5 and 0. "
else echo "$1 is less then 0."
fi

$ chmod a+x test.sh
$ ./test.sh 3
3 is between 5 and 0.

說明：這裡我們建立一個檔名為 test.sh 的檔案，以指令 cat test.sh 來看它的內容。接著執行 ./test.sh 3，表示輸入一個參數 3。test.sh 檔案的內容表示依輸入的參數判斷參數大於 5 或介於 5 和 0 的中間，或者是小於 0。

24.5.2 while 及 until 迴圈

基本語法：

while condition-list
   do list
   done

until condition-list
   do list
   done

範例一：

#!/bin/sh
i=1
while [ $i -le 5 ]
   do
       echo $i
       i=`expr $i + 1`
   done

說明：首先令變數 i=1，接著在迴圈中當 i 小於等於 5 時就印出 i 的值，每印一次 i 就加 1。直到 i 大於 5 才停止。

範例二：

#!/bin/sh
i=1
until [ $i -gt 5 ]
   do
       echo $i
       i=`expr $i + 1`
   done

說明：首先令變數 i=1，接著迴圈會判斷，一直執行到 i 大於 5 才停止。每跑一次迴圈就印出 i 的值，每印一次 i 就加 1。注意 while 和 until 的判斷式中，一個是 -le ，一個是 -gt。

24.5.3 for 迴圈

基本語法：

for name in word1 word2 …
   do do-list
   done

for name
   do do-list
   done

範例一：

$ ee color1.sh

#!/bin/sh
for color in blue red green
    do
       echo $color
    done

$ chmod a+x color1.sh
$ ./color1.sh
blue
red
green

說明：這個檔案 color1.sh 中，會在每一次迴圈中將關鍵字 in 後面的字串分配給變數 color，然後印出變數 color。關鍵字 in 讓我們可以依序設定一些值並指派給變數，然而，我們也可以不使用關鍵字 in。如果沒有關鍵字 in ，程式會自動讀取輸入的參數，並依序指派給 for 之後的變數。請看範例二。

範例二：

$ ee color2.sh

#!/bin/sh
for color
    do
       echo $color
    done

$ chmod a+x color2.sh
$ ./color2.sh black green yellow
black
green
yellow

說明：在 color2.sh 這個檔中，for 迴圈沒有使用 in 這個關鍵字。但我們在執行它時輸入三個參數，迴圈會自動將輸入的參數指派給 for 之後的變數 color，並印出它。

24.5.4 case 判斷

基本語法：

case word in
    pattern1) list1 ;;
    pattern2) list2 ;;
    …
esac

範例：

$ ee num.sh

for num
do
   case $num in
       0|1|2|3)       echo $num is between 0~3;;
       4|5|6|7)       echo $num is between 4~7;;
       8|9)           echo $num is 8 or 9;;
       *)             echo $num is not on my list;;
    esac
done

$ chmod a+x num.sh
$ ./num.sh 3 8 a
3 is between 0~3
8 is 8 or 9
a is not on my list

說明：這個程式是用來判斷輸入的參數大小。for 迴圈會將每一個輸入的參數指定給變數 num，而在 case 中，判斷變數 num 的內容符合哪一個條件，同一個條件中的每個字用 | 分開。如果未符上面的條件則一定會符合最後一個條件 * 。每一個要執行的 list 是以 ;; 做結尾，如果有多行 list，只要在最後一行加上一個 ;; 即可。

24.6 函式的運用

在 Shell Script 中也可以使用函式 (function) 來使用程式模組化。

基本語法：

name ( )
{
    statement
}

函式有幾個要注意的地方：

    在使用函式之前一定要先定義它，也就是在一個 Shell Script 中，一定要先寫函式的內容，在檔案最後再寫會呼叫函式的程式部份。
    在 Shell Script 中的變數全部都是全域變數 (Global)，所以在函式中的變數也會影響函式外的其他部份。
    命令列輸入的參數在 Shell Script 中是以 $1, $2....來讀取，但是這些參數並不會在函式中出現。所以必須使用傳遞參數的方式來將要在函式中使用的變數傳給該函式。傳遞的方法和在命令列中使用 Shell Script 的方式一樣，例如：name arg1 arg2..。傳進函式的變數會以 $1,$2... 來儲存，這和命令列傳給 Shell Script 的參數名稱一樣但內容不同。

範例：

$ ee test.sh

#! /bin/sh
ERRLOG=$1
ok ( )
{
      read ans
      case $ans in
           [yY]*) return 0;;
           *) return 1;;
      esac
}
errexit ( )
{
      echo $1
      date >> $ERRLOG
      echo $1 >> $ERRLOG
      exit
}
echo -n  "Test errexit function [y/n] "
ok && errexit "Testing the errexit function"
echo Normal termination

$ chmod a+x test.sh
$ ./test.sh err.log

說明：

這個程式中有二個函式：errexit 及 ok。第一行定義要將 log 檔存在傳給這個 Shell Script 的第一個參數。接著是二個函式，之後印出一行字，echo -n 表示印出字後游標不換行。然後再執行 ok 這個函式，如果 ok 函式執行成功則再執行 errexit 函式，並傳給 errexit 函式一個字串，最後再印出一個字串。

在 ok 函式中，使用 read 指令來讀入一個參數並指派給變數 ans。接著判斷使用者輸入的值是否為 Y 或 y，如果是則傳回 1 代表沒有成功執行，如果不是則傳回 0 代表成功執行函式 ok。

如果 ok 函式傳回 1 便不會執行 errexit 函式。如果是 0 則在 errexit 函式中，會先印出要傳給 errexit 的參數 " Testing the errexit function"，並記錄在指定的檔案中。

 

