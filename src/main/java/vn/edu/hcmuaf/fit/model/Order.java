package vn.edu.hcmuaf.fit.model;

import java.util.*;

public class Order {
    private String id, userId, status, deliveryAddressId, note;
    private long amount;
    private Date orderDate;

    private Map<Product, Integer> listPd= new HashMap<Product, Integer>();

    public Order(String id, String userId, String status, String deliveryAddressId, String note, Date orderDate) {
        this.id = id;
        this.userId = userId;
        this.status = status;
        this.deliveryAddressId = deliveryAddressId;
        this.note = note;
        this.orderDate = orderDate;
    }

    public long computeAmount(){
        long res=0;
        for (Map.Entry<Product, Integer> e: listPd.entrySet())
            res+=e.getKey().getPrice()*e.getValue();
        this.amount=res;
        return res;
    }

    //chuong da o day nha baay
    public void addProduct(Map<Product, Integer> list){
        this.listPd=list;
        computeAmount();
    }

    public Map<Product, Integer> getListPd(){
        return listPd;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getDeliveryAddressId() {
        return deliveryAddressId;
    }

    public void setDeliveryAddressId(String deliveryAddressId) {
        this.deliveryAddressId = deliveryAddressId;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public long getAmount() {
        return amount;
    }

    public void setAmount(long amount) {
        this.amount = amount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Order)) return false;
        Order order = (Order) o;
        return getAmount() == order.getAmount() && Objects.equals(getId(), order.getId()) && Objects.equals(getUserId(), order.getUserId()) && Objects.equals(getStatus(), order.getStatus()) && Objects.equals(getDeliveryAddressId(), order.getDeliveryAddressId()) && Objects.equals(getNote(), order.getNote()) && Objects.equals(getOrderDate(), order.getOrderDate()) && Objects.equals(getListPd(), order.getListPd());
    }

}
