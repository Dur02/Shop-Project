package cn.wyu.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.wyu.pojo.Cart;
import cn.wyu.pojo.Detail;
import cn.wyu.util.JDBCUtil;

public class CartDaoImpl implements CartDao {

    @Override
    public int insertCart(Cart cart) {
        //到数据库完成购物车添加功能
        String sql = "INSERT INTO `ec_shopcar`(`articleId`, `buyNum`, `userId`) VALUES (?,?,?);";
        int in = JDBCUtil.executeUpdate(sql,cart.getArticleid(),cart.getBuynum(),cart.getUserid());
        return in;
    }

    @Override
    public List<Detail> findCartGoodsByUserid(String userid) {
        //到数据库完成查询购物车物品功能
        String sql = "SELECT * FROM `ec_shopcar` a,`ec_article` b WHERE a.userId=? and a.articleId=b.id";
        ResultSet rs = JDBCUtil.executeQuery(sql,userid);
        List<Detail> articleList = new ArrayList<>();
        try {
            while(rs.next()) {
                Detail detail = new Detail();
                detail.setId(rs.getInt("articleId"));
                detail.setTypecode(rs.getString("TYPE_CODE"));
                detail.setTitle(rs.getString("TITLE"));
                detail.setSupplier(rs.getString("SUPPLIER"));
                detail.setPrice(rs.getDouble("PRICE"));
                detail.setDiscount(rs.getDouble("DISCOUNT"));
                detail.setLocality(rs.getString("LOCALITY"));
                detail.setPutawaydate(rs.getString("PUTAWAY_DATE"));
                detail.setStorage(rs.getInt("STORAGE"));
                detail.setImage(rs.getString("IMAGE"));
                detail.setDescription(rs.getString("DESCRIPTION"));
                detail.setDatetime(rs.getString("CREATE_DATE"));
                detail.setDisable(rs.getInt("DISABLED"));
                System.err.println("detail:"+detail);
                articleList.add(detail);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return articleList;
    }

    @Override
    public List<Cart> findCartByUserid(String userid) {
        //到数据库完成查询购物车物品功能
        String sql = "SELECT * FROM `ec_shopcar` a,`ec_article` b WHERE a.userId=? and a.articleId=b.id";
        ResultSet rs = JDBCUtil.executeQuery(sql,userid);
        List<Cart> cartList = new ArrayList<>();
        try {
            while(rs.next()) {
                Cart cart = new Cart();
                cart.setId(rs.getInt("ID"));
                cart.setArticleid(rs.getInt("articleId"));
                cart.setBuynum(rs.getInt("buyNum"));
                cart.setUserid(rs.getInt("userId"));
                System.err.println("cart:"+cart);
                cartList.add(cart);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return cartList;
    }

    @Override
    public int deleteCart(String id) {
        ///到数据库完成购物车添加功能
        String sql = "DELETE FROM `ec_shopcar` WHERE `ID`=?";
        int dl = JDBCUtil.executeUpdate(sql,id);
        return dl;
    }

    @Override
    public int findCountByArticleId(Cart cart) {
        //到数据库根据物品编码完成查询购物车记录条数功能
        String sql = "SELECT * FROM `ec_shopcar` WHERE `articleId`=?";
        ResultSet rs = JDBCUtil.executeQuery(sql,cart.getArticleid());
        int count = 0;
        try {
            while(rs.next()) {
                Cart cart1 = new Cart();
                cart1.setId(rs.getInt("ID"));
                cart1.setArticleid(rs.getInt("articleId"));
                cart1.setBuynum(rs.getInt("buyNum"));
                cart1.setUserid(rs.getInt("userId"));
                count++;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int updateCart(Cart cart) {
        //到数据库完成购物车修改功能
        String sql = "UPDATE `ec_shopcar` SET `buyNum`=? WHERE `articleId`=? AND `userId`=?";
        int in = JDBCUtil.executeUpdate(sql,cart.getBuynum(),cart.getArticleid(),cart.getUserid());
        return in;
    }

    @Override
    public int findBuynumByArticleIdAndUserid(Cart cart) {
        //到数据库完成购物车查询数量功能
        String sql = "SELECT `buyNum` FROM `ec_shopcar` WHERE `articleId`=? AND `userId`=?";
        ResultSet rs = JDBCUtil.executeQuery(sql,cart.getArticleid(),cart.getUserid());
        int num = 0;
        try {
            while(rs.next()) {
                num = rs.getInt("buyNum");
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return num;
    }
}

