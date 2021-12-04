package cn.wyu.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import cn.wyu.pojo.Detail;
import cn.wyu.pojo.Page;
import cn.wyu.util.JDBCUtil;

public class DetailDaoImpl implements DetailDao {

    @Override
    public List<Detail> findAllGoods(Page page) {
        //到数据库完成查询物品功能
        String sql = "SELECT * FROM `ec_article` LIMIT ?,?";
        ResultSet rs = JDBCUtil.executeQuery(sql,page.getStartRow(),page.getPageSize());
        List<Detail> detailList = new ArrayList<Detail>();
        try {
            while(rs.next()) {
                Detail detail = new Detail();
                detail.setId(rs.getInt("ID"));
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
                detailList.add(detail);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return detailList;
    }

    @Override
    public int findCount() {
        //到数据库完成查询记录条数功能
        String sql = "SELECT * FROM `ec_article`";
        ResultSet rs = JDBCUtil.executeQuery(sql);
        int count = 0;
        try {
            while(rs.next()) {
                Detail detail = new Detail();
                detail.setId(rs.getInt("ID"));
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
                count++;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public List<Detail> findGoodsByTypecode(String typecode, Page page) {
        //到数据库根据物品类型完成查询物品功能
        typecode = typecode + "%";
        String sql = "SELECT * FROM `ec_article` WHERE `TYPE_CODE` LIKE ? LIMIT ?,?";
        ResultSet rs = JDBCUtil.executeQuery(sql,typecode,page.getStartRow(),page.getPageSize());
        List<Detail> detailList = new ArrayList<Detail>();
        try {
            while(rs.next()) {
                Detail detail = new Detail();
                detail.setId(rs.getInt("ID"));
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
                detailList.add(detail);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return detailList;
    }

    @Override
    public int findCountByTypecode(String typecode) {
        //到数据库根据物品类型完成查询记录条数功能
        typecode = typecode + "%";
        String sql = "SELECT * FROM `ec_article` WHERE `TYPE_CODE` LIKE ? ";
        ResultSet rs = JDBCUtil.executeQuery(sql,typecode);
        int count = 0;
        try {
            while(rs.next()) {
                Detail detail = new Detail();
                detail.setId(rs.getInt("ID"));
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
                count++;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public List<Detail> findGoodsByTypecodeAndKeyword(String typecode, String keyword, Page page) {
        //到数据库根据物品类型和关键字完成查询物品功能
        typecode = typecode + "%";
        keyword = "%" + keyword + "%";
        String sql = "SELECT * FROM `ec_article` WHERE `TYPE_CODE` LIKE ? AND (`TITLE` LIKE ? OR 'SUPPLIER' LIKE ? OR 'LOCALITY' LIKE ? OR 'DESCRIPTION' LIKE ?) LIMIT ?,?";
        ResultSet rs = JDBCUtil.executeQuery(sql,typecode,keyword,keyword,keyword,keyword,page.getStartRow(),page.getPageSize());
        List<Detail> detailList = new ArrayList<Detail>();
        try {
            while(rs.next()) {
                Detail detail = new Detail();
                detail.setId(rs.getInt("ID"));
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
                detailList.add(detail);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return detailList;
    }

    @Override
    public int findCountByTypecodeAndKeyword(String typecode, String keyword) {
        //到数据库根据物品类型和关键字完成查询记录条数功能
        typecode = typecode + "%";
        keyword = "%" + keyword + "%";
        String sql = "SELECT * FROM `ec_article` WHERE `TYPE_CODE` LIKE ? AND (`TITLE` LIKE ? OR 'SUPPLIER' LIKE ? OR 'LOCALITY' LIKE ? OR 'DESCRIPTION' LIKE ?)";
        ResultSet rs = JDBCUtil.executeQuery(sql,typecode,keyword,keyword,keyword,keyword);
        int count = 0;
        try {
            while(rs.next()) {
                Detail detail = new Detail();
                detail.setId(rs.getInt("ID"));
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
                count++;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public List<Detail> findGoodById(String id) {
        //到数据库完成查询物品功能
        String sql = "SELECT * FROM `ec_article` WHERE `id`=?";
        ResultSet rs = JDBCUtil.executeQuery(sql,id);
        List<Detail> goodList = new ArrayList<Detail>();
        try {
            while(rs.next()) {
                Detail detail = new Detail();
                detail.setId(rs.getInt("ID"));
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
                goodList.add(detail);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return goodList;
    }

    @Override
    public List<Detail> findOrderGoodsById(String product) {
        //到数据库完成查询物品功能
        JSONArray array = JSON.parseArray(product);
        List<Detail> temList = new ArrayList<Detail>();
        List<Detail> ordersList = null;
        for(int i = 0; i < array.size(); i++) {
            JSONObject jsonobj = array.getJSONObject(i);
            int id = jsonobj.getInteger("id");
            int number = jsonobj.getInteger("number");
            String sql = "SELECT * FROM `ec_article` WHERE `ID`=?";
            ResultSet rs = JDBCUtil.executeQuery(sql,id);
            List<Detail> orderList = new ArrayList<Detail>();
            ordersList = new ArrayList<Detail>();
            try {
                while(rs.next()) {
                    Detail detail = new Detail();
                    detail.setId(rs.getInt("ID"));
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
                    detail.setBuynum(number);
                    System.err.println("detail:"+detail);
                    orderList.add(detail);
                    temList.addAll(orderList);
                }
                ordersList.addAll(temList);
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return ordersList;
    }

}

