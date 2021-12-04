package cn.wyu.dao;

import java.util.List;

import cn.wyu.pojo.Order;

public interface OrderDao {

    int insertOrder(Order order);

    List<Order> findSearchByUserid(String userid);

    int findCountByUserid(String userid);

}

