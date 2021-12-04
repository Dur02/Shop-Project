package cn.wyu.service;

import java.util.List;

import cn.wyu.pojo.Order;

public interface OrderService {

    int insertOrder(Order order);

    List<Order> findSearchByUserid(String userid);

    int findCountByUserid(String userid);

}
