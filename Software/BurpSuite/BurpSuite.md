Burp Suite
==========

設定
----
* Https封包攔截不到時,需要把憑證匯到瀏覽器
* Chrome要打開Proxy 可以安裝套件
* Options 

操作
----
* Proxy
* Intruder
  * Target
  * Positions
    - Clear
    - Add
    - Cluster bomb暴力測試
  * Payloads
    - Payload set
    - Payload try 
    - Start attack
  
* Repeater

其他檢測工具
-----
* [DVWA]
* SQL Injection -> [sql map]
* Command Injection -> [commix]

測試網站 
---------
[Altoro Mutual](http://testfire.net/)
[Acunetix Art](http://testphp.vulnweb.com/)

OWASP
-----
* Open Web Application Security Project = OWASP
* Tools & Documentation
* [Top 10 測試項目](https://owasp.org/www-project-top-ten/)
  1. Injection
  2. Broken Authentication
  3. Sensitive Data Exposure 私人資料
  4. XML External Entities (XXE)
  5. Broken Access Control
  6. Security Misconfiguration
  7. Cross-Site Scripting XSS
  8. Insecure Deserialization 反序列化
  9. Using Components with Known Vulnerabilities 不安全的元件
  10. Insufficient Logging & Monitoring
  
A1-Injection
------------
* SQL injection

  select * from xxx where station = 102 OR 1=1

* command injection
* XML injection
* LDAP injection
* SSI Injection
    
* 尋找注入點
  * 輸入資料的地方 
  * Header,Referer,Cookie,Hidden Field

* 判斷注入點是否存在SQL Injection
  * 數字類型->算術計算(+ - * /)
  * 字串

* 猜測語法結構

  select * from xxx where station = 101 
  select * from xxx where station = 101 OR 1 = 1
  select * from xxx where station = '101' OR '1' = '1'
  select * from xxx where (station = '101' OR '1' = '1'
  
* SQL Injection Authentication Bypass

用註解

    select * from users where username = 'myname' or 1=1--' and passwrod = 'a'

* 註解語法
  * MS-SQL, Oracle:
    --
    /**/


  * My-SQL:
    -- 
    
* SQL Injection Type
  * Union-Based
    * UNION select * from user 
    * ORDER BY 1
      ORDER BY 4 --> Error
    * UNION SELECT 1, 2, 3, 4, 5, ...11
      UNION SELECT NULL, NULL, ...
  * Error-Based
    
  * Blind-Based
    * Boolean-Based
      * AND 1=1
      * AND 1=2
      * AND length(database())<5
      * AND length(database())>5
      * AND length(database())=6
    * Time-Based
      * id=1' AND sleep(3)--+
      * id=1' AND 

* sqlmap
* SQL Injection Flow
找尋注入點->判斷注入點->判斷SQL Injection類型->利用SQL Injection
* 如何防止SQL Injection
  * 使用參數化查詢(Prepared Statement)方式取代字串連接方式
  * 過濾使用者輸入資料內容,移除任何

* Command Injection
  
  * Results-based
  * Blind-based

  Linux Common Operators
  | operators | result |
  
  uname -a && ping 8.8.8.8
  unamee -a && ping 8.8.8.8

  uname -a || ping 8.8.8.8
  unamee -a || ping 8.8.8.8
  
  www.nsa.gov; uname -a
   
* commix
  
  $ commix --url="http://IP/GET/blind.php?addr=8.8.8.8":w
  $ commix --url="你的victime網址" --data="你剛剛送的訊息" --cookie="你的cookie"
  
  127.0.0.1; ls


    
