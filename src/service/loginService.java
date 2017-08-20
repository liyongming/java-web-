package service;

import demo.user;
import dao.loginDao;
/**
 * Created by Administrator on 2017/8/19.
 */
public class loginService {
    private loginDao loginDao;

    public loginService() {
        this.loginDao = new loginDao();
    }

    public user selectUser(user users){
        user user = loginDao.selectUser(users);
        return user;
    }
}
