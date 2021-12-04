package cn.wyu.service;

import java.util.List;

import cn.wyu.pojo.Cart;
import cn.wyu.pojo.Detail;

public interface CartService {

    int insertCart(Cart cart);

    List<Detail> findCartGoodsByUserid(String userid);

    List<Cart> findCartByUserid(String userid);

    int deleteCart(String id);

    int findCountByArticleId(Cart cart);

    int updateCart(Cart cart);

    int findBuynumByArticleIdAndUserid(Cart cart);

}
