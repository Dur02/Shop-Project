package cn.wyu.pojo;

import java.io.Serializable;

public class Page implements Serializable{
    private static final long serialVersionUID = 1L;
    private int pageIndex;//当前的页码
    private int pageSize;//每一页显示的记录条数
    private int count;//总记录条数
    private int totalSize;//总页数
    public Page(int pageIndex,int pageSize,int count, int totalSize) {
        super();
        this.pageIndex = pageIndex;
        this.pageSize = pageSize;
        this.count = count;
        this.totalSize = totalSize;
    }
    public Page() {
        super();
    }
    public int getPageIndex() {
        return pageIndex;
    }
    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }
    public int getPageSize() {
        return pageSize;
    }
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    public int getCount() {
        return count;
    }
    public void setCount(int count) {
        this.count = count;
    }
    public int getTotalSize() {
        totalSize = (this.getCount() % this.getPageSize() == 0)
                ? this.getCount() / this.getPageSize()
                : this.getCount() / this.getPageSize() + 1;
        return totalSize;
    }
    public void setTotalSize(int totalSize) {
        this.totalSize = totalSize;
    }
    public int getStartRow() {
        return ((this.getPageIndex()-1)*this.getPageSize());
    }
    @Override
    public String toString() {
        return "Page [pageIndex=" + pageIndex + ", pageSize=" + pageSize + ", count=" + count + ", totalSize="
                + totalSize + "]";
    }
}

