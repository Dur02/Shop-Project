package cn.wyu.dao;

import java.util.List;
import cn.wyu.pojo.Detail;
import cn.wyu.pojo.Page;

public interface DetailDao {
    List<Detail> findAllGoods(Page page);

    int findCount();

    List<Detail> findGoodsByTypecode(String typecode, Page page);

    int findCountByTypecode(String typecode);

    List<Detail> findGoodsByTypecodeAndKeyword(String typecode, String keyword, Page page);

    int findCountByTypecodeAndKeyword(String typecode, String keyword);

    List<Detail> findGoodById(String id);

    List<Detail> findOrderGoodsById(String product);
}

