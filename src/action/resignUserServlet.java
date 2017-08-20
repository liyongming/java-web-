package action;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import demo.user;
import service.registerService;
import util.MD5;

/**
 * Created by Administrator on 2017/8/19.
 */
public class resignUserServlet extends HttpServlet{
    private user user;
    private registerService registerService;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        Integer age = Integer.parseInt(req.getParameter("age"));
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        String phone = req.getParameter("phone");
        user user = new user();
        user.setUsername(username);
        try {
            user.setPassword(MD5.MD5a(password));
        } catch (Exception e) {
            e.printStackTrace();
        }
        user.setAge(age);
        user.setAddress(address);
        user.setPhone(phone);
        user.setEmail(email);
        System.out.println(user.toString());
        registerService = new registerService();
        int count = 0;
        try {
            count = registerService.registerUser(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(count == 0){
            resp.sendRedirect("signUp.jsp");
        }else{
            req.getRequestDispatcher("/after/register.jsp").forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
