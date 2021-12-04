package cn.wyu.pojo;

import java.io.Serializable;

public class Cart implements Serializable{
    private static final long serialVersionUID = 1L;
    private int id;//购物车id
    private int articleid;//商品id
    private int buynum;//商品数量
    private int userid;//用户id
    public Cart(int id,int articleid,int buynum,int userid) {
        super();
        this.id = id;
        this.articleid = articleid;
        this.buynum = buynum;
        this.userid = userid;
    }
    public Cart() {
        super();
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getArticleid() {
        return articleid;
    }
    public void setArticleid(int articleid) {
        this.articleid = articleid;
    }
    public int getBuynum() {
        return buynum;
    }
    public void setBuynum(int buynum) {
        this.buynum = buynum;
    }
    public int getUserid() {
        return userid;
    }
    public void setUserid(int userid) {
        this.userid = userid;
    }
    @Override
    public String toString() {
        return "Cart [id=" + id + ", articleid=" + articleid + ", buynum=" + buynum + ", userid=" + userid + "]";
    }
}

