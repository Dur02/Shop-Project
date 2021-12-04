package cn.wyu.service;

import java.util.List;
import cn.wyu.dao.DetailDao;
import cn.wyu.dao.DetailDaoImpl;
import cn.wyu.pojo.Detail;
import cn.wyu.pojo.Page;
import cn.wyu.service.DetailService;
import cn.wyu.service.DetailServiceImpl;

public class DetailServiceImpl implements DetailService {
    private DetailDao dd = new DetailDaoImpl();
    @Override
    public List<Detail> findAllGoods(Page page) {
        List<Detail> detailList = dd.findAllGoods(page);
        return detailList;
    }
    @Override
    public int findCount() {
        int count = dd.findCount();
        return count;
    }
    @Override
    public List<Detail> findGoodsByTypecode(String typecode, Page page) {
        List<Detail> detailList = dd.findGoodsByTypecode(typecode,page);
        return detailList;
    }
    @Override
    public int findCountByTypecode(String typecode) {
        int count = dd.findCountByTypecode(typecode);
        return count;
    }
    @Override
    public List<Detail> findAllGoodsByTypecodeAndKeyword(String typecode, String keyword, Page page) {
        List<Detail> detailList = dd.findGoodsByTypecodeAndKeyword(typecode,keyword,page);
        return detailList;
    }
    @Override
    public int findCountByTypecodeAndKeyword(String typecode, String keyword) {
        int count = dd.findCountByTypecodeAndKeyword(typecode,keyword);
        return count;
    }
    @Override
    public List<Detail> findGoodById(String id) {
        List<Detail> goodList = dd.findGoodById(id);
        return goodList;
    }
    @Override
    public List<Detail> findOrderGoodsById(String product) {
        List<Detail> orderList = dd.findOrderGoodsById(product);
        return orderList;
    }
}
