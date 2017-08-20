package action.student;

import service.student.listStudentService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Administrator on 2017/8/20.
 */
public class deleteStudent extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String stu_id= req.getParameter("stu_id");
        System.out.println(stu_id);
        listStudentService listStudentService = new listStudentService();
        int count = listStudentService.deleteStudent(stu_id);
        if (count == 0){
            resp.sendRedirect("/after/kuanjia/listStudent.jsp");
        }else{
            req.getRequestDispatcher("/selectStudent?pageNumber=1").forward(req,resp);
        }
    }

}
