package cn.wyu.pojo;

import java.io.Serializable;

public class Order implements Serializable{
    private static final long serialVersionUID = 1L;
    private int id;//订单id
    private String ordercode;//订单编码
    private String creatdate;//创建订单时间
    private String senddate;//发送订单时间
    private String status;//订单状态
    private double amount;//订单总价
    private int userid;//用户id
    public Order(int id,String ordercode,String creatdate,String senddate,String status,double amount,int userid) {
        super();
        this.id = id;
        this.ordercode = ordercode;
        this.creatdate = creatdate;
        this.senddate = senddate;
        this.status = status;
        this.amount = amount;
        this.userid = userid;
    }
    public Order() {
        super();
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getOrdercode() {
        return ordercode;
    }
    public void setOrdercode(String ordercode) {
        this.ordercode = ordercode;
    }
    public String getCreatdate() {
        return creatdate;
    }
    public void setCreatdate(String creatdate) {
        this.creatdate = creatdate;
    }
    public String getSenddate() {
        return senddate;
    }
    public void setSenddate(String senddate) {
        this.senddate = senddate;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public double getAmount() {
        return amount;
    }
    public void setAmount(double amount) {
        this.amount = amount;
    }
    public int getUserid() {
        return userid;
    }
    public void setUserid(int userid) {
        this.userid = userid;
    }
    @Override
    public String toString() {
        return "Order [id=" + id + ", ordercode=" + ordercode + ", creatdate=" + creatdate + ", senddate=" + senddate
                + ", status=" + status + ", amount=" + amount + ", userid=" + userid + "]";
    }
}
