package test;

import org.junit.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
/**
 * Created by Administrator on 2017/8/19.
 */
public class testJdbc {
    private static String url = "jdbc:oracle:thin:@localhost:1521:orcl";
    private static String user = "scott";
    private static String password = "123456";
    private static Connection conn;
    private static Statement st ;
    @Test
    public void testConnect(){
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url,user,password);
            System.out.println(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
