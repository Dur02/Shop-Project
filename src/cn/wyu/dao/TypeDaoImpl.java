package cn.wyu.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import cn.wyu.pojo.Type;
import cn.wyu.util.JDBCUtil;

public class TypeDaoImpl implements TypeDao  {

    @Override
    public List<Type> findAllTypes() {
        //到数据库完成查询物品类型功能
        String sql = "SELECT * FROM `ec_article_type`";
        ResultSet rs = JDBCUtil.executeQuery(sql);
        List<Type> typeList = new ArrayList<Type>();
        try {
            while(rs.next()) {
                Type type = new Type();
                type.setCode(rs.getString("CODE"));
                type.setName(rs.getString("NAME"));
                type.setRemark(rs.getString("REMARK"));
                System.err.println("type:"+type);
                typeList.add(type);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return typeList;
    }
}

