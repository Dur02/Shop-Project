package cn.wyu.service;

import cn.wyu.dao.UserDao;
import cn.wyu.dao.UserDaoImpl;
import cn.wyu.pojo.User;

public class UserServiceImpl implements UserService {
    private UserDao ud = new UserDaoImpl();
    @Override

    public int insertUser(User user) {
        return ud.insertUser(user);
    }

    @Override
    public User findByNumber(String loginname, String password) {
        User user = ud.findByNumber(loginname);
        if(user!=null) {
            if(password.equals(user.getPassword())){
                return user;
            }
        }
        return null;
    }


}
