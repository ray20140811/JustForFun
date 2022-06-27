# 使用jar

- [How to add multiple jar files in classpath in linux](https://stackoverflow.com/questions/11459664/how-to-add-multiple-jar-files-in-classpath-in-linux)

$javac -cp .:a.jar:b.jar:c.jar HelloWorld.java

$java -cp .:a.jar:b.jar:c.jar HelloWorld

# 連接mariadb

- [How can I connect to mariadb using java?](https://stackoverflow.com/questions/37909487/how-can-i-connect-to-mariadb-using-java)

$ javac -cp .:mariadb-java-client-3.0.5.jar MariaDBExample.java

$ java -cp .:mariadb-java-client-3.0.5.jar MariaDBExample
