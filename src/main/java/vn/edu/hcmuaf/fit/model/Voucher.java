package vn.edu.hcmuaf.fit.model;

import vn.edu.hcmuaf.fit.controller.Util;

import java.util.Date;

public class Voucher {
    private String id, name, type, description;
    private long discount, minPrice;
    private Date startDate, endDate;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    private int status;

    public Voucher(String id, String type, String name, long discount, long minPrice, Date startDate, Date endDate, int status) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.discount = discount;
        this.minPrice = minPrice;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
    }
    public Voucher(String id, String type, String name, long discount, long minPrice, Date startDate, Date endDate, int status, String description) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.discount = discount;
        this.minPrice = minPrice;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
        this.description= description;
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
        if (type.equals("Mi???n ph?? v???n chuy???n")) return "image/voucher_type/free_ship.png";
        else return "image/voucher_type/discount.png";
    }

    public String getVoucherDescription(){
        int range1=Math.abs(Util.minusDate(startDate,new Date()));
        int range2=Math.abs(Util.minusDate(new Date(),endDate));
        if (startDate.compareTo(new Date())>0) return "C?? t??c d???ng sau "+ (range1!=0?range1+" ng??y":Util.minusDateToHours(startDate, new Date())+" gi???");
        else return "H???t h???n sau "+(range2!=0?range2+" ng??y":Util.minusDateToHours(new Date(), endDate)+" gi???");
    }

    @Override
    public String toString() {
        return "Voucher{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", discount=" + discount +
                ", minPrice=" + minPrice +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", status=" + status +
                '}';
    }
}
