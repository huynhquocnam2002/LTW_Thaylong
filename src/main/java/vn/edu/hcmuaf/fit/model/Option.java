package vn.edu.hcmuaf.fit.model;

public class Option {
    private String id;
    private String value;
    private long price;
    private int quantity;
    private String img;
    private int status;

    public Option(String id, String value, long price, int quantity, String img, int status) {
        this.id = id;
        this.value = value;
        this.price = price;
        this.quantity = quantity;
        this.img = img;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Option{" +
                "id='" + id + '\'' +
                ", value='" + value + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", img='" + img + '\'' +
                ", status=" + status +
                '}';
    }
}
