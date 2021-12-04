package cn.wyu.pojo;

import java.io.Serializable;

public class Type implements Serializable {
    private static final long serialVersionUID = 1L;
    private String code;//商品代号
    private String name;//商品名
    private String remark;//商品备注ע
    public Type(String code,String name,String remark) {
        super();
        this.code = code;
        this.name = name;
        this.remark = remark;
    }
    public Type() {
        super();
    }
    public String getCode() {
        return code;
    }
    public void setCode(String code) {
        this.code = code;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getRemark() {
        return remark;
    }
    public void setRemark(String remark) {
        this.remark = remark;
    }
    @Override
    public String toString() {
        return "Type [code=" + code + ", name=" + name + ", remark=" + remark + "]";
    }
}

