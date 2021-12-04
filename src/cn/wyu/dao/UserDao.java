package cn.wyu.dao;

import cn.wyu.pojo.User;

public interface UserDao {

    int insertUser(User user);

    User findByNumber(String loginname);


}

