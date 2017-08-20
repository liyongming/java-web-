package action;

import service.loginService;
import util.MD5;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import demo.user;
/**
 * Created by Administrator on 2017/8/19.
 */
public class loginServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        System.out.println(username);
        String password = "";
        try {
            password = (MD5.MD5a((String) req.getParameter("password")));
        } catch (Exception e) {
            e.printStackTrace();
        }
        user user = new user();
        user.setUsername(username);
        user.setPassword(password);
        loginService loginService= new loginService();
        user users =loginService.selectUser(user);//查询数据库返回的信息
        if(users.getUsername()!="" && users.getUsername() != null){
            req.getSession().setAttribute("username",username);
            req.getRequestDispatcher("/after/afterIndex.jsp").forward(req,resp);
        }else{
            resp.sendRedirect("/cr/signIn.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
