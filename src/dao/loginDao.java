package dao;
import demo.user;
import util.JDBC;

import java.sql.*;

/**
 * Created by Administrator on 2017/8/19.
 */
public class loginDao {
    private static Connection conn;
    private static Statement st ;
    public user selectUser(user users){
        user user = new user();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String sql = "SELECT username,password from userTest where username=? AND password = ?";
            conn = DriverManager.getConnection(JDBC.getUrl(),JDBC.getUser(),JDBC.getPassword());
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,users.getUsername());
            ps.setString(2,users.getPassword());
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                String usernmae = rs.getString("username");
                String password = rs.getString("password");
                user.setUsername(usernmae);
                user.setPassword(password);
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
}
