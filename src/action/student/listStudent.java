package action.student;

import demo.student;
import service.student.listStudentService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Administrator on 2017/8/19.
 */
public class listStudent extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pageNumber = req.getParameter("pageNumber");
        listStudentService listStudentService = new listStudentService();
        student student = new student();
        List<student> selectStudent = listStudentService.selectStudent(student,Integer.parseInt(pageNumber));
        req.setAttribute("selectStudent",selectStudent);
        req.setAttribute("pageNumber",pageNumber);
        req.getRequestDispatcher("/after/kuanjia/student/listStudent.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
