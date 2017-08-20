package util;

import java.sql.Connection;
import java.sql.Statement;

/**
 * Created by Administrator on 2017/8/19.
 */
public class JDBC {
    private static String url = "jdbc:oracle:thin:@localhost:1521:orcl";
    private static String user = "scott";
    private static String password = "123456";
    private static Connection conn;
    private static Statement st ;

    public static String getUrl() {
        return url;
    }

    public static String getUser() {
        return user;
    }

    public static String getPassword() {
        return password;
    }

    public static Connection getConn() {
        return conn;
    }

    public static Statement getSt() {
        return st;
    }
}
