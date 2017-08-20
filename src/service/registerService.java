package service;
import dao.registerDao;
import demo.user;
/**
 * Created by Administrator on 2017/8/19.
 */
public class registerService {
    private registerDao registerDao;

    public registerService() {
        this.registerDao = new registerDao();
    }
    public int registerUser(user users) throws Exception {
        int count = registerDao.registerUser(users);
        return count;
    }
}
