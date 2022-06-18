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

### 4.1 引言

### 4.2 LISP的述句

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

  試問nil是個基元，或者是個串列？這是個容易使人混淆的問題。若說nil是基元,但nil是(),空串列,所以當然是個串列。幸運的是,我們可以拿這個問題查詢LISP解譯程式:
  
	> (atom nil)
  	T
  
所以atom說nil是個基元。再看listp怎麼說:

	> (listp nil)
	T

listp也說nil是串列。根據這些函數的說法,nil可看成是基元,也可視為串列。

  事實上,nil是個非常特殊的例子。因為常要分辨nil和其它s-運算式,所以LISP為此特別提供了一個述句:

	> (null nil)
	T

	> (null 'a)
	NIL

	> (null '(a b c))
	NIL

	> (null ())
	T

null的引數值若是nil,則傳回t,否則傳回nil。

  LISP也有個述句,稱為dtpr,它若碰到不是nil的串列,則傳回真值;這是判斷資料是否為非nil串列的一種簡易方法。
  另外有個述句equal也很有用,它能測試兩個s-運算式外觀上是否相等。例如:

	> (equal 'a 'b)
	NIL

	> (equal 'a 'a)
	T

	> (equal '(a b c) '(a b c))
	T
	
	> (equal '(a b c) '(a (b) c))
	NIL

LISP也提供大量的算術述句。例如,numbp可測試引數,看看是不是數值。所以

	> (numbp 6)
	T

	> (numbp 'a)
	NIL

[註]: numbp要改用numberp

此外,還有zerop, oddp, evenp, lessp和greaterp等述句。它們的功能,從名稱上就可略知一二。

  有個較有趣的LISP述句,那就是member。它的第二個引數必須是個串列。member會檢查第二個引數,看看串列裏頭有沒有出現第一個引數。若有,member會傳回串列中第一個引數出現的位置(包括在內)以後的部分。否則member傳回nil:

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

[註] 實際測試(member '(a b) '((x y) foo a b (a b) (c d) (a b)))得到的是NIL。可能是因為使用的LISP不同,待查證

  為什麼member不像其它的述句一般只傳回t?讀者該還記得,LISP只分辨nil和非nil,並將非nil視為真值。所以類似(b c)的傳回值,如上例所示,會被視為真值,其效力和t相同。但是,值(b c)比t提供了更多的資訊。例如,若想知道一個值在某個串列中出現的次數是否超過兩次,只傳回t是不夠的。此時若傳回串列中剩餘的部份,就能提供足夠的資訊。一般而言,LISP嘗試讓述句傳回更多的資訊。
  為什麼(member 'y '(x (y) z))會傳回nil? member只檢查第一個引數是否為第二個引數的元素。而在這個運算式內,y不是( x (y) z)的元素(雖然y是其中某個元素的元素)。讀者若有興趣,可以自行設計個函數,其能檢查運算式更深層的元素,但是此處的member並不具備這種能力。
  LISP還提供各式各樣的述句,但是本書所提到的這些述句已經足敷使用。當讀者熟悉述句的基本原理之後,可查閱附錄A,以了解更多的述句。
  當然,我們也可用defun定義符合我們需求的述句。例如,我們需要一個述句,其能判斷串列的car是不是基元。此述句可以定義成:

	> (defun car-atomp (x) (atom (car x)))
	car-atomp
	> (car-atomp '(a b c))
	T
	> (car-atomp '((a) (b) (c)))
	NIL

事實上,這個car-atomp述句無法滿足我們的需求。它只盲目的對引數使用car函數。萬一引數不是串列,那麼就會發生錯誤。一旦發生這種情形,我們希望car-atomp只傳回nil值。
  很明顯的,我們需先測試引數,看看它是不是串列,若是串列才用car取出第一個引數。但是,到目前為止,我們尚未具有設計這種函數的能力。我們知道如何使用述句來判斷某個條件是否成立,但卻無法根據測試所得進行有條件的求值。若要進行有條件的求值,尚需引進一種新的建構。

### 4.3 條件式

  我們現在就要用述句來進行選擇。首先,需要有個等價於條件分支的機能。同樣的,LISP用函數來提供這種機能。函數的名稱為cond,取其conditional(條件式)之義。cond和"if...then...else"相似,但更具一般性。cond可以處理任意數目的引數,這些引數就稱為cond子句。每個cond子句,由一連串的s-運算式所組成。子句的第一個元素,是要進行測試的條件;子句的其餘部份則是條件成立時必須執行的事情。
  要對cond子句求值,LISP先對它的條件求值。它的條件就是子句的第一個元素。只有當條件的值為真時,才對子句內其餘的運算式求值。
  現以實例來說明。假使我們希望執行car函數之前先確定它的引數是個串列,就可以設計成下列的形式:

    (cond ((listp x) (car x)))

這是只含一個子句的cond函數。式中唯一的子句為((listp x) (car x))。子句的第一個元素(listp x),就是子句的條件,當其求值所得為真時,LISP才會對子句內其餘的元素進行求值;在本例中,子句內只有一個額外的元素,那就是運算式(car x)。
  讓我們把x繫結於某些資料,再看看下面這些式子的計算情形:

    > (setq x '(a b c)')
    (a b c)
    > (cond ((listp x) (car x)))
    a
    > (setq x 'y)
    y
    > (cond ((listp x) (car x)))
    NIL

  cond和其它的LISP函數相同,都會傳回一個值。從上面這個例子可以看出,只有通過cond子句的測試,LISP才會對子句中的運算式進行求值。那個運算式的值,也做為cond的傳回值。若測試失敗,cond傳回nil。上面這個範例雖然完全合法,但在LISP的頂層使用cond並沒有多大的意義。cond通常用於函數的定義內,它們所處理的值會隨應用的不同而有所改變。例如,利用cond可以設計出函數car-atomp更佳的版本。根據我們的規定,只有當car-atomp的引數的car是個基元時,函數才傳回真值。但是前一個版本無法保證car函數的運作完全正確,意即,car只會作用於串列。有了cond,要進行類似的條件求值就變得非常容易:

    > (defun car-atomp (x) (cond ((listp x) (atom (car x)))))
    car-atomp
    > (car-atomp '(a b c)')
    T
    > (car-atomp 'z')
    NIL

這兒的cond用來判斷對引數執行car函數安不安全。若不安全,cond只傳回nil,這個值也是函數的傳回值。否則,cond傳回(atom (car x))的值,而不考慮這是個什麼樣的值。

#### 4.3.1 更複雜的cond

  在上例中,cond的功效相當於"if ... then ..."敘述:只有通過前面的測試,才對後面的部份進行求值。但是,cond有著更廣泛的用途,尤其是cond允許我們宣告任意數目的cond子句。LISP會對每個子句前面部份的測試進行求值,直到找到一個測試,其傳回值是真值為止。然後LISP對這個cond子句其餘的部份進行求值。如果在這個cond子句之後還有多餘的cond子句,則全部略去不計。
  現以實例來說明,假設我們所要設計的函數必須具有下列的功能:若給它一個串列,就用cons把基元a加入串列的最前端;若給它一個數值,就令此數加7;否則,只傳回nil。我們可用雙子句的cond建構出這個函數:
  
    > (defun cond-example1 (x)
		(cond
			((listp x) (cons 'a x))
			((numbp x) (plus 7 x))))
	cond-example1	
	> (cond-example1 '(b c))
    (a b c)
	> (cond-example1 9)
	16
	> (cond-example1 'z)
	NIL
	
我們可以用縮排的形式寫出cond子句。以便讓函數的結構更加清晰。這是種優良的程式設計方式。
  當我們使用cond-example1時,首先對第一個cond子句的條件進行求值。引數若是個串列,傳回值為真,此時a會cons至串列的最前端。所得的新串列就是cond的值,另一個cond子句則忽略掉。但是,引數若不是串列,第一個cond子句的條件,其值為假,這個子句的其餘部份全部忽略,再對下一個cond子句的條件進行求值。引數若是個數值,傳回值為真,此時令此數加7,所得的新值就做為cond的傳回值。如果兩個cond子句的條件,求值的結果都是nil,則到達cond的終點,此時傳回nil。
  到目前為止,在我們的範例中出現的cond子句都只有一個運算式。但是,LISP允許子句的條件後面跟著任意多個s-運算式。當這個子句的條件求值所得為真時,即對條件後頭的運算式依序逐一求值。

	> (defun cond-example2 (x)
		(cond
			[(listp x) (setq flag 'list) (cons 'a x)]
			[(numbp x) (setq flag 'number) (plus 7 x)]))
	cond-example2
	> (cond-example2 '(b c) 
	(a b c)
	> flag
	list
	> (cond-example2 9)
	16 
	> flag
	number
	
	

	> (defun cond-example3 (x)
		(cond
			[(listp x) (setq flag 'list) (cons 'a x)]
			[(numbp x) (setq flag 'number) (plus 7 x)]
			[t (setq flag 'neither) nil]))
	cond-example3
	> (cond-example3 '(b c) 
	(a b c)
	> flag
	list
	> (cond-example3 'z)
	nil 
	> flag
	neither
	
	> (defun cond-example4 (x)
	    (cond
		[(listp x) (setq flag 'list) (cons 'a x)]
		[(numbp x) (setq flag 'number) (plus 7 x)]
		[(setq flag 'neither)]))
	cond-example4
	> (cond-example4 '(b c))
	(a b c)
	> flag
	list
	> (cond-example4 'z)
	neither
	> flag
	neither 

### 4.4 邏輯運算子

  假設我們要檢查某個s-運算式的值是不是介於50和100之間的偶數
，我們可以分別用evenp，greaterp和lessp檢查此數，再用cond合併
它們。下面這個函數可以完成這件工作:
    
	> (defun even-50-100 (x)
	    (cond ((numbp x)
		(cond ((evenp x)
		    (cond ((greaterp x 49)
			    (lessp x 101))))))))
	even-50-100    
	> (even-50-100 17)
	nil
	> (even-50-100 88)
	t
	> (even-50-100 89)
	nil
	> (even-50-100 102)
	nil
	> (even-50-100 '(a b c))
	nil

毫無疑問的，這個函數完全正確，但是它的程式碼的可讀性極差。一般而言
，基於可讀性的觀點，在cond內放入cond函數是種不良的程式設計方式
。但是，以我們目前的能力來說，也只能採用這個方法。
  幸運的是，LISP和其它的程式語言相似，其提供了合併述句的簡易方
法，也就是使用邏輯運算子（logical operator）。邏輯運算子以真值做爲
引數，傳回的也是個真值。常用的邏輯運算子有and，or以及not。
  not是最簡單的邏輯運算子，它的引數求值結果若是假，則傳回t，若
是真，則傳回nil。例如，要檢查x的值是否不是基元，可以採用下式：

    > (not (atom x))
    
當（atom x）的傳回值爲假時，此式傳回真。
  （註-因爲真和假各以非nil和nil代表，所以not可說是等價於null。
兩者可視爲同一個函數的兩個不同名稱，用以協助使用者設計可讀性更高的
程式。如果你認爲引數是個串列（可能是空串列），就採用null，若認爲引
數是個真值，則採用not。）
  and和or都能處理任意數目的引數，並對它們逐個求值。若是and，
則連續對引數求值，直到某個引數的值是nil爲止，此時and立刻傳回nil
；如果每個引數的值都不是nil，則傳回最後一個引數的值（這個引數的值
絕非nil）。例如，要看看x是不是小於100的偶數，可以輸入

    (and (evenp x) (lessp x 100))
    
or的工作方式和and相似，但它只有碰到其值爲真的引數才停止求值，並
傳回這個引數的值；否則傳回nil。
  例如，想判斷x的值是數值或nil，可以輸入
  
    (or (null x) (numbp x))
    
這個式子裏頭的兩個述句，只要有一個的值是真，它就傳回真。

#### 4.4.1 使用and和or控制程式的流程

  因爲or和and只有知道確定的結果就會立刻停止對引數的求值，所以
常用於控制程式的流程。例如，我們想知道串列l的第一個元素是不是數字
，若只寫成（numbp (car l))，則當l的值是個基元時會發生錯誤，所以
必須先進行檢查：

    (and (listp l) (numbp (car l)))

and會在對第二個引數求值前先對第一個引數求值，而除非第一個條件爲真
，意即l是個串列，否則不會執行（car l），因此car函數的使用可說萬
無一失。
  上面這個範例，用and取代cond，進行有條件求值。採用cond的缺
點是較不優雅，但其效果完全相同。

    (cond ((listp l) (nbumbp (car l))))
    
  但是，恰如本節一開始所呈現的，述句的組合變得較爲複雜時，cond
就會非常笨拙。讓我們改用邏輯運算子設計even-50-100，再和使用cond
的版本做個比較：

    > (defun even-50-100 (x)
	(and (numbp x) (evenp x) (greaterp x 49) (lessp x 101)))

很明顯的，採用and的版本較爲簡潔，可讀性也較高。

### 4.5 摘要

    (1) 述句是種判斷某個條件是否成立的函數。LISP用nil代表“假”
	，用非nil代表“真”。至於特殊基元t求值的結果則得到本身，
	因此當函數想傳回非nil值時，即可用這個基元來代表。
    (2) LISP