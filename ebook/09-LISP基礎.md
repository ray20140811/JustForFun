# 目錄

## 序

1. LISP程式語言
2. 範圍及目標
3. 格式

## 第1章 基本概念

1.1 引言
1.2 LISP解譯程式
1.3 求值
    1.3.1 對更複雜的s-運算式進行求值
1.4 函數的引數
1.5 基元和繫結
1.6 離開LISP
1.7 摘要
習 題

## 第4章 述句,條件式與邏輯運算子

4.1 引言
4.2 LISP的述句

  LISP有個很有用的述句，其可判斷s-運算式是不是基元。這個函數，依其本質來命名，就稱為atom。

	> (atom 'a)
	T

	> (atom 8)
	T

	> (atom '(a b c))
	NIL

	> (atom (car '(a b c)))
	T

	> (atom (cdr '(a b c)))
	NIL

同理，LISP也有個函數listp，其可判斷運算式是不是串列（許多LISP述句都以p做為名字的最後一個字母，代表"predicate"（述句）的意思）。

	> (listp 'a)
	NIL

	> (listp 8)
	NIL

	> (listp '(a b c))
	T

	> (listp (car '(a b c)))
	NIL

	> (listp (cdr '(a b c)))
	T

  試問nil是個基元，或者是個串列？這是個容易使人混淆的問題。若說nil是基元,但nil是(),空串列,所以當然是個串列.幸運的是,我們可以拿這個問題查詢LISP解譯程式:
  
	> (atom nil)
  	T
  
所以atom說nil是個基元.再看listp怎麼說:

	> (listp nil)
	T

listp也說nil是串列.根據這些函數的說法,nil可看成是基元,也可視為串列.

  事實上,nil是個非常特殊的例子.因為常要分辨nil和其它s-運算式,所以LISP為此特別提供了一個述句:

	> (null nil)
	T

	> (null 'a)
	NIL

	> (null '(a b c))
	NIL

	> (null ())
	T

null的引數值若是nil,則傳回t,否則傳回nil.

  LISP也有個述句,稱為dtpr,它若碰到不是nil的串列,則傳回真值;這是判斷資料是否為非nil串列的一種簡易方法.
  另外有個述句equal也很有用,它能測試兩個s-運算式外觀上是否相等.例如:

	> (equal 'a 'b)
	NIL

	> (equal 'a 'a)
	T

	> (equal '(a b c) '(a b c))
	T
	
	> (equal '(a b c) '(a (b) c))
	NIL

LISP也提供大量的算術述句.例如,numbp可測試引數,看看是不是數值.所以

	> (numbp 6)
	T

	> (numbp 'a)
	NIL

[註]: numbp要改用numberp

此外,還有zerop, oddp, evenp, lessp和greaterp等述句.它們的功能,從名稱上就可略知一二.

  有個較有趣的LISP述句,那就是member.它的第二個引數必須是個串列.member會檢查第二個引數,看看串列裏頭有沒有出現第一個引數.若有,member會傳回串列中第一個引數出現的位置(包括在內)以後的部分.否則member傳回nil:

	> (member 'b '(a b c))
	(b c)

	> (member 'x '(a b c))
	NIL

	> (member 'y '(x (y) z))
	NIL

	> (member '(a b) '(a b c))
	NIL

	> (member '(a b) '((x y) foo a b (a b) (c d) (a b)))
	((a b) (c d) (a b))

[註] 實際測試(member '(a b) '((x y) foo a b (a b) (c d) (a b)))得到的是NIL.可能是因為使用的LISP不同,待查證