package action.student;

import demo.student;
import service.student.listStudentService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Administrator on 2017/8/20.
 */
public class addStudent extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String stu_name = req.getParameter("stu_name");
       String sex = req.getParameter("sex");
       String age = req.getParameter("age");
        student student = new student();
        student.setSex(sex);
        student.setStu_name(stu_name);
        student.setAge(Integer.parseInt(age));
        listStudentService listStudentService = new listStudentService();
        int count = listStudentService.addStudent(student);
        if(count == 0 ){
            req.setAttribute("msg","添加学生失败...");
            resp.sendRedirect("/after/kuangjia/student/addStudent.jsp");
        }else{
            req.getRequestDispatcher("/selectStudent?pageNumber=1").forward(req,resp);
        }
    }
}
