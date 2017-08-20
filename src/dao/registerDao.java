package dao;
import demo.user;
import org.junit.Test;

import java.sql.*;

/**
 * Created by Administrator on 2017/8/19.
 */
public class registerDao {
    private static String url = "jdbc:oracle:thin:@localhost:1521:orcl";
    private static String user = "scott";
    private static String password = "123456";
    private static Connection conn;
    private static Statement st ;
    public int registerUser(user users){
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String sql = "INSERT into userTest(username,password,age,email,address,phone) values(?,?,?,?,?,?)";
            conn = DriverManager.getConnection(url,user,password);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,users.getUsername());
            ps.setString(2,users.getPassword());
            ps.setInt(3,users.getAge());
            ps.setString(4,users.getEmail());
            ps.setString(5,users.getAddress());
            ps.setString(6,users.getPhone());
            int count = ps.executeUpdate();
            conn.close();
            return count;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
