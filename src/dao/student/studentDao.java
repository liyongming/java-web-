package dao.student;

import demo.classes;
import demo.user;
import util.JDBC;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import demo.student;
/**
 * Created by Administrator on 2017/8/19.
 */
public class studentDao {
    private static Connection conn;
    private static Statement st ;

    public List<student> selectStudent(student student,int startPageNumber,int endPageNumber){
        List<student> selectStudent =  new ArrayList<student>();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String sql = "select * from (\n" +
                    "select a.stu_id,b.name,a.stu_name,a.sex,a.age,rownum as rowsf from student a,classes b\n" +
                    "where a.cls_id = b.cls_id\n" +
                    ")\n" +
                    "where rowsf >=?\n" +
                    "and rowsf <=?";
            conn = DriverManager.getConnection(JDBC.getUrl(),JDBC.getUser(),JDBC.getPassword());
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,startPageNumber+"");
            ps.setString(2,endPageNumber+"");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int stu_id= Integer.parseInt(rs.getString("stu_id"));
                String name = rs.getString("name");
                String stu_name = rs.getString("stu_name");
                String sex = rs.getString("sex");
                String age = rs.getString("age");
                student stu = new student();
                classes classes = new classes();
                stu.setStu_id(stu_id);
                stu.setAge(Integer.parseInt(age));
                stu.setStu_name(stu_name);
                stu.setSex(sex);
                classes.setName(name);
                stu.setClasses(classes);

                selectStudent.add(stu);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return selectStudent;
    }
    public int updateStudent(int id,student student){
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String sql = "SELECT username,password from userTest where username=? AND password = ?";
            conn = DriverManager.getConnection(JDBC.getUrl(),JDBC.getUser(),JDBC.getPassword());
            PreparedStatement ps = conn.prepareStatement(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 3;
    }
    public int deleteStudent(String id){
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String sql = "delete from student where stu_id = ?";
            conn = DriverManager.getConnection(JDBC.getUrl(),JDBC.getUser(),JDBC.getPassword());
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,id);
            int count = ps.executeUpdate();
            return count;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    public student selectByIdStudent(int id,student student){
        student students = new student();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String sql = "SELECT username,password from userTest where username=? AND password = ?";
            conn = DriverManager.getConnection(JDBC.getUrl(),JDBC.getUser(),JDBC.getPassword());
            PreparedStatement ps = conn.prepareStatement(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return students;
    }

    public int addStudent(student student){
        student students = new student();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String sql = "insert into student values(?,?,?,?,?,?)";
            conn = DriverManager.getConnection(JDBC.getUrl(),JDBC.getUser(),JDBC.getPassword());
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,student.getStu_id());
            int count = ps.executeUpdate();
            return count;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
