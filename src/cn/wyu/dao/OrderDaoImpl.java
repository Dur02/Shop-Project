package cn.wyu.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import cn.wyu.pojo.Order;
import cn.wyu.util.JDBCUtil;

public class OrderDaoImpl implements OrderDao {

    @Override
    public int insertOrder(Order order) {
        //到数据库完成购物车添加功能
        String sql = "INSERT INTO `ec_order`(`ORDER_CODE`, `CREATE_DATE`, `SEND_DATE`, `STATUS`, `AMOUNT`, `USER_ID`) VALUES (?,?,?,?,?,?)";
        int in = JDBCUtil.executeUpdate(sql,order.getOrdercode(),order.getCreatdate(),order.getSenddate(),order.getStatus(),order.getAmount(),order.getUserid());
        return in;
    }

    @Override
    public List<Order> findSearchByUserid(String userid) {
        //到数据库完成查询购物车物品功能
        String sql = "SELECT * FROM `ec_order` WHERE `USER_ID`=?";
        ResultSet rs = JDBCUtil.executeQuery(sql,userid);
        List<Order> searchList = new ArrayList<>();
        try {
            while(rs.next()) {
                Order order = new Order();
                order.setId(rs.getInt("ID"));
                order.setOrdercode(rs.getString("ORDER_CODE"));
                order.setCreatdate(rs.getString("CREATE_DATE"));
                order.setSenddate(rs.getString("SEND_DATE"));
                order.setStatus(rs.getString("STATUS"));
                order.setAmount(rs.getDouble("AMOUNT"));
                order.setUserid(rs.getInt("USER_ID"));
                System.err.println("oeder:"+order);
                searchList.add(order);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return searchList;
    }

    @Override
    public int findCountByUserid(String userid) {
        //到数据库完成查询购物车物品功能
        String sql = "SELECT * FROM `ec_order` WHERE `USER_ID`=?";
        ResultSet rs = JDBCUtil.executeQuery(sql,userid);
        int count = 0;
        try {
            while(rs.next()) {
                Order order = new Order();
                order.setId(rs.getInt("ID"));
                order.setOrdercode(rs.getString("ORDER_CODE"));
                order.setCreatdate(rs.getString("CREATE_DATE"));
                order.setSenddate(rs.getString("SEND_DATE"));
                order.setStatus(rs.getString("STATUS"));
                order.setAmount(rs.getDouble("AMOUNT"));
                order.setUserid(rs.getInt("USER_ID"));
                count++;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return count;
    }
}

