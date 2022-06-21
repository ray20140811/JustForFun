-- 2.2 使用mysql命令行工具
SELECT now(); --mysql

/*
 * Oracle規定查詢語句必須包含from子句,因此提供一個特殊的表dual,該表只包含一個名為dummy的列,並且只會有一個數據行.
 * mysql也提供此dual表
 * */
SELECT now() FROM dual; 

-- 2.3 MySQL數據類型
---- 2.3.1 字符型數據
SHOW CHARACTER SET;

-- 2.4
---- 2.4.3 第3步:構建SQL方案語句 
/*
 * mysql允許在定義時關聯一個檢查約束
 * gender CHAR(1) CHECK (gender IN ('M','F'))
 * 
 * mysql提供enum的字符數據類型.可以將檢查約束與數據類型定義融合到一起.
 * gender CHAR(1) CHECK (gender IN ('M','F'))改為 gender ENUM('M', 'F'),
 * 
 * 
 * */

-- 創建person表
CREATE TABLE person
(person_id SMALLINT UNSIGNED,
 fname VARCHAR(20),
 lname VARCHAR(20),
 gender ENUM('M', 'F'),
 birth_date DATE,
 street VARCHAR(30),
 city VARCHAR(20),
 state VARCHAR(20),
 country VARCHAR(20),
 postal_code VARCHAR(20),
 CONSTRAINT pk_person PRIMARY KEY (person_id)
);

-- 用DESCRIBE命令(縮寫為DESC)檢查表定義,可用來確認表是否被創建.
DESC person;

DROP TABLE person;

-- 創建favorite_food表
CREATE TABLE favorite_food
(
 person_id SMALLINT UNSIGNED,
 food VARCHAR (20),
 CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
 CONSTRAINT fk_fav_food_person_id FOREIGN KEY (person_id)
 	REFERENCES person (person_id)
);

DESC favorite_food;

DROP TABLE favorite_food;

-- 2.5 操作與修改表
---- 為主鍵列打開自增特性
ALTER TABLE person MODIFY person_id SMALLINT UNSIGNED AUTO_INCREMENT;

INSERT INTO person (person_id, fname, lname, gender, birth_date)
VALUES (null, 'William', 'Turner', 'M', '1972-05-27')

SELECT person_id, fname, lname, gender, birth_date FROM person;

SELECT person_id, fname, lname, gender, birth_date FROM person WHERE person_id=1;

SELECT person_id, fname, lname, gender, birth_date FROM person WHERE lname='Turner' ;

SELECT * FROM person;

INSERT INTO favorite_food (person_id, food)
VALUES (1, 'pizza');

INSERT INTO favorite_food (person_id, food)
VALUES (1, 'cookies');

INSERT INTO favorite_food (person_id, food)
VALUES (1, 'nachos');

SELECT food FROM favorite_food WHERE person_id = 1 ORDER BY food;


INSERT INTO person (person_id, fname, lname, gender, birth_date, street, city, state, country, postal_code)
VALUES (null, 'Susan', 'Smith', 'F', '1975-11-02','23 Maple St.', 'Arlington', 'VA','USA','20220')
