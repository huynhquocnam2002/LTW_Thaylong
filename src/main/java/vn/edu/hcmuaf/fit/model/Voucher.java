package vn.edu.hcmuaf.fit.model;

import java.util.Date;

public class Voucher {
    private String id, name, type;
    private long discount, minPrice;
    private Date startDate, endDate;
    private int status;

    public Voucher(String id, String name, String type, long discount, long minPrice, Date startDate, Date endDate, int status) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.discount = discount;
        this.minPrice = minPrice;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public long getDiscount() {
        return discount;
    }

    public void setDiscount(long discount) {
        this.discount = discount;
    }

    public long getMinPrice() {
        return minPrice;
    }

    public void setMinPrice(long minPrice) {
        this.minPrice = minPrice;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getImg(){
        if (type.equals("Miễn phí vận chuyển")) return "image/voucher_type/free_ship.png";
        else return "image/voucher_type/discount.png";
    }
}
