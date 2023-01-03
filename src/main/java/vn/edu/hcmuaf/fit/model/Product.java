package vn.edu.hcmuaf.fit.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

public class Product {
    private String id;
    private String name;
    private long price;
    private String img;

    private int ins;
    private String category;

    private String tag;

    private String ID_producer;

    private Date add_date;
    //
    private int quantity;

    private String detail;

    private int status;

    private String optionName;

    private List<Option> options = new ArrayList<Option>();

    public Product(String id, String name, long price, String img) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.img = img;
    }

    public Product(String id, String name, long price, String img, int ins, String category, String tag, String ID_producer, int status, Date add_date, int quantity, String detail) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.img = img;
        this.ins = ins;
        this.category = category;
        this.tag = tag;
        this.ID_producer = ID_producer;
        this.add_date = add_date;
        this.quantity = quantity;
        this.detail = detail;
        this.status = status;
    }

    public String getID_producer() {
        return ID_producer;
    }

    public void addOption(List<Option> options) {
        this.options = options;
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
        return ID_producer;
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

    public void setID_product(String ID_producer) {
        this.ID_producer = ID_producer;
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

    public String getOptionName() {return this.optionName;}

    public void setOptionName(String optionName){ this.optionName=optionName;}

    @Override
    public String toString() {
        return "Product{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", img='" + img + '\'' +
                ", ins=" + ins +
                ", category='" + category + '\'' +
                ", tag='" + tag + '\'' +
                ", ID_producer='" + ID_producer + '\'' +
                ", add_date=" + add_date +
                ", quantity=" + quantity +
                ", detail='" + detail + '\'' +
                ", status=" + status +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Product)) return false;
        Product product = (Product) o;
        return getPrice() == product.getPrice() && getIns() == product.getIns() && getQuantity() == product.getQuantity() && getStatus() == product.getStatus() && Objects.equals(getId(), product.getId()) && Objects.equals(getName(), product.getName()) && Objects.equals(getImg(), product.getImg()) && Objects.equals(getCategory(), product.getCategory()) && Objects.equals(getTag(), product.getTag()) && Objects.equals(getID_product(), product.getID_product()) && Objects.equals(getAdd_date(), product.getAdd_date()) && Objects.equals(getDetail(), product.getDetail());
    }

    public List<Option> getOptions() {
        return options;
    }

    public int getNumOfOptions(){
        return options.size();
    }

}
