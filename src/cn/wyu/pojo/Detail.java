package cn.wyu.pojo;

import java.io.Serializable;

public class Detail implements Serializable{
    private static final long serialVersionUID = 1L;
    private int id;//商品id
    private String typecode;//商品类型编码
    private String title;//商品名
    private String supplier;//商品供应商
    private double price;//商品价格
    private double discount;//商品折扣
    private String locality;//商品供应地
    private String putawaydate;//上架时间
    private int storage;//商品库存
    private String image;//商品图片
    private String description;//商品描述
    private String datetime;//注册时间
    private int disable;//商品状态
    private int buynum;//商品数量
    public Detail(int id, String typecode, String title, String supplier, double price, double discount, String locality,
                  String putawaydate, int storage, String image, String description, String datetime, int disable,int buynum) {
        super();
        this.id = id;
        this.typecode = typecode;
        this.title = title;
        this.supplier = supplier;
        this.price = price;
        this.discount = discount;
        this.locality = putawaydate;
        this.putawaydate = putawaydate;
        this.storage = storage;
        this.image = image;
        this.description = description;
        this.datetime = datetime;
        this.disable = disable;
        this.buynum = buynum;
    }
    public Detail() {
        super();
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getTypecode() {
        return typecode;
    }
    public void setTypecode(String typecode) {
        this.typecode = typecode;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getSupplier() {
        return supplier;
    }
    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public double getDiscount() {
        return discount;
    }
    public void setDiscount(double discount) {
        this.discount = discount;
    }
    public String getLocality() {
        return locality;
    }
    public void setLocality(String locality) {
        this.locality = locality;
    }
    public String getPutawaydate() {
        return putawaydate;
    }
    public void setPutawaydate(String putawaydate) {
        this.putawaydate = putawaydate;
    }
    public int getStorage() {
        return storage;
    }
    public void setStorage(int storage) {
        this.storage = storage;
    }
    public String getImage() {
        return image;
    }
    public void setImage(String image) {
        this.image = image;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public String getDatetime() {
        return datetime;
    }
    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }
    public int getDisable() {
        return disable;
    }
    public void setDisable(int disable) {
        this.disable = disable;
    }
    public int getBuynum() {
        return buynum;
    }
    public void setBuynum(int buynum) {
        this.buynum = buynum;
    }
    @Override
    public String toString() {
        return "Detail [id=" + id + ", typecode=" + typecode + ", title=" + title + ", supplier=" + supplier
                + ", price=" + price + ", discount=" + discount + ", locality=" + locality + ", putawaydate="
                + putawaydate + ", storage=" + storage + ", image=" + image + ", description=" + description
                + ", datetime=" + datetime + ", disable=" + disable + ", buynum=" + buynum + "]";
    }
}

