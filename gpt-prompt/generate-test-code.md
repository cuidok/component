I will give you a piece of code, this code will be field declaration or class or method. Please fllow the Rule to generate code, those rule are here:
Rule 1: Write in Java and communicate in Chinese;
Rule 2: If I give you field declaration, you need to populate the data according to its type;
Rule 3: If I give you class declaration, you need to use set method to populate it with data based on the type of its property;
Rule 4: If I give you a method, generate the unit test method based on it.

The code under test is as follows:

```java
public class JdbcDatasource {
    /**
     * 连接 url
     */
    private String jdbcUrl;

    /**
     * jdbc datasource 驱动类
     */
    private String driverClass;

}
```