package cn.wyu.service;

import java.util.List;

import cn.wyu.dao.CartDao;
import cn.wyu.dao.CartDaoImpl;
import cn.wyu.pojo.Cart;
import cn.wyu.pojo.Detail;

public class CartServiceImpl implements CartService {
    private CartDao cd = new CartDaoImpl();
    @Override
    public int insertCart(Cart cart) {
        return cd.insertCart(cart);
    }
    @Override
    public List<Detail> findCartGoodsByUserid(String userid) {
        List<Detail> articleList = cd.findCartGoodsByUserid(userid);
        return articleList;
    }
    @Override
    public List<Cart> findCartByUserid(String userid) {
        List<Cart> cartList = cd.findCartByUserid(userid);
        return cartList;
    }
    @Override
    public int deleteCart(String id) {
        return cd.deleteCart(id);
    }
    @Override
    public int findCountByArticleId(Cart cart) {
        int count = cd.findCountByArticleId(cart);
        return count;
    }
    @Override
    public int updateCart(Cart cart) {
        return cd.updateCart(cart);
    }
    @Override
    public int findBuynumByArticleIdAndUserid(Cart cart) {
        int num = cd.findBuynumByArticleIdAndUserid(cart);
        return num;
    }

}

