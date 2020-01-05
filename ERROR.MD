## 버전 오류
```
Could not get JDBC Connection; nested exception is java.sql.SQLException: Unknown system variable 'query_cache_size'
```
- 버전을 자신의 MySQL 버전에 맞게 변경해주니 해결

   
```
Loading class `com.mysql.jdbc.Driver'. This is deprecated. The new driver class is `com.mysql.cj.jdbc.Driver'. The driver is automatically 
registered via the SPI and manual loading of the driver class is generally unnecessary.

java.sql.SQLException: The server time zone value '���ѹα� ǥ�ؽ�'
```
Mysql 8이상은 아래와 같이 URL을 수정해서 넣어줘야함.

?serverTimezone=UTC

EX) <property name="url" value="jdbc:mysql://127.0.0.1:3306/web?serverTimezone=UTC"></property>