package vn.edu.hcmuaf.fit.model;

import java.util.Date;

public class Product {
    private String id;
    private String name;
    private long price;
    private String img;

    private int ins;
    private String category;

    private String tag;

    private String ID_product;

    private Date add_date;
 //
    private int quantity;

    private String detail;

    private int status;
    //đọc cmt gg meet đê


    public Product(String id, String name, long price, String img, int ins, String category, String tag, String ID_product, int status, Date add_date, int quantity, String detail) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.img = img;
        this.ins = ins;
        this.category = category;
        this.tag = tag;
        this.ID_product = ID_product;
        this.add_date = add_date;
        this.quantity = quantity;
        this.detail = detail;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public long getPrice() {
        return price;
    }

    public String getImg() {
        return img;
    }

    public String getCategory() {
        return category;
    }

    public String getTag() {
        return tag;
    }

    public String getID_product() {
        return ID_product;
    }

    public Date getAdd_date() {
        return add_date;
    }

    public int getQuantity() {
        return quantity;
    }

    public String getDetail() {
        return detail;
    }

    public int getStatus() {
        return status;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public void setID_product(String ID_product) {
        this.ID_product = ID_product;
    }

    public void setAdd_date(Date add_date) {
        this.add_date = add_date;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getIns() {
        return ins;
    }

    public void setIns(int ins) {
        this.ins = ins;
    }
}
