package cn.wyu.service;

import java.util.List;

import cn.wyu.dao.OrderDao;
import cn.wyu.dao.OrderDaoImpl;
import cn.wyu.pojo.Order;

public class OrderServiceImpl implements OrderService {
    private OrderDao od = new OrderDaoImpl();
    @Override
    public int insertOrder(Order order) {
        return od.insertOrder(order);
    }
    @Override
    public List<Order> findSearchByUserid(String userid) {
        List<Order> searchList = od.findSearchByUserid(userid);
        return searchList;
    }
    @Override
    public int findCountByUserid(String userid) {
        int count = od.findCountByUserid(userid);
        return count;
    }

}

