package cn.wyu.pojo;

import java.io.Serializable;

public class User implements Serializable{
    private static final long serialVersionUID = 1L;
    private int id;//用户id
    private String loginName;//登录名
    private String password;//密码
    private String name;//真实姓名
    private int sex;//性别
    private String email;//邮箱
    private String phone;//联系电话
    private String address;//详细地址
    private int role;//角色
    private String datetime;//注册时间
    private int disable;//账号状态
    private String active;//等级
    public User(int id, String loginName, String password, String name, int sex, String email, String phone,
                String address, int role, String datetime, int disable, String active) {
        super();
        this.id = id;
        this.loginName = loginName;
        this.password = password;
        this.name = name;
        this.sex = sex;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.role = role;
        this.datetime = datetime;
        this.disable = disable;
        this.active = active;
    }
    public User() {
        super();
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getLoginName() {
        return loginName;
    }
    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getSex() {
        return sex;
    }
    public void setSex(int sex) {
        this.sex = sex;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public int getRole() {
        return role;
    }
    public void setRole(int role) {
        this.role = role;
    }
    public String getDateTime() {
        return datetime;
    }
    public void setDateTime(String datetime) {
        this.datetime = datetime;
    }
    public int getDisable() {
        return disable;
    }
    public void setDisable(int disable) {
        this.disable = disable;
    }
    public String getActive() {
        return active;
    }
    public void setActive(String active) {
        this.active = active;
    }
    @Override
    public String toString() {
        return "User [id=" + id + ", loginName=" + loginName + ", password=" + password + ", name=" + name + ", sex="
                + sex + ", email=" + email + ", phone=" + phone + ", address=" + address + ", role=" + role
                + ", datetime=" + datetime + ", disable=" + disable + ", active=" + active + "]";
    }

}
