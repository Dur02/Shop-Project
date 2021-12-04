package cn.wyu.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import cn.wyu.pojo.User;
import cn.wyu.util.JDBCUtil;

public class UserDaoImpl implements UserDao {

    @Override
    public int insertUser(User user) {
        //到数据库完成用户添加功能
        String sql = "INSERT INTO `ec_user`(`LOGIN_NAME`, `PASSWORD`, `NAME`, `SEX`, `EMAIL`, `PHONE`, `ADDRESS`, `ROLE`, `CREATE_DATE`, `DISABLED`, `ACTIVE`) VALUES (?,?,?,?,?,?,?,?,?,?,?);";
        int in = JDBCUtil.executeUpdate(sql,user.getLoginName(),user.getPassword(),user.getName(),user.getSex(),user.getEmail(),user.getPhone(),user.getAddress(),user.getRole(),user.getDateTime(),user.getDisable(),user.getActive());
        return in;
    }

    @Override
    public User findByNumber(String loginname) {
        //到数据库根据用户名完成用户查询功能
        String sql = "SELECT * FROM `ec_user` WHERE `LOGIN_NAME`=?";
        ResultSet rs = JDBCUtil.executeQuery(sql, loginname);
        try {
            if(rs.next()) {
                User user = new User();
                user.setId(rs.getInt("ID"));
                user.setLoginName(rs.getString("LOGIN_NAME"));
                user.setPassword(rs.getString("PASSWORD"));
                user.setName(rs.getString("NAME"));
                user.setSex(rs.getInt("SEX"));
                user.setEmail(rs.getString("EMAIL"));
                user.setPhone(rs.getString("PHONE"));
                user.setAddress(rs.getString("ADDRESS"));
                user.setRole(rs.getInt("ROLE"));
                user.setDateTime(rs.getString("CREATE_DATE"));
                user.setDisable(rs.getInt("DISABLED"));
                user.setActive(rs.getString("ACTIVE"));
                return user;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

}
