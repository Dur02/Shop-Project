package cn.wyu.service;

import cn.wyu.pojo.User;

public interface UserService {

    int insertUser(User user);

    User findByNumber(String loginname, String password);

}
