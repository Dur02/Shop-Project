package cn.wyu.service;

import java.util.List;
import cn.wyu.pojo.Detail;
import cn.wyu.pojo.Page;

public interface DetailService {
    public List<Detail> findAllGoods(Page page);
    public int findCount();
    public List<Detail> findGoodsByTypecode(String typecode, Page page);
    public int findCountByTypecode(String typecode);
    public List<Detail> findAllGoodsByTypecodeAndKeyword(String typecode, String keyword, Page page);
    public int findCountByTypecodeAndKeyword(String typecode, String keyword);
    public List<Detail> findGoodById(String id);
    public List<Detail> findOrderGoodsById(String product);
}
