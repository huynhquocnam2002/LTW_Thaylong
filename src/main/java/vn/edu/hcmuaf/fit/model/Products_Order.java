package vn.edu.hcmuaf.fit.model;

public class Products_Order {

    private String id_Order;

    private String id_Product;

    private int quantity;

    private long amount;

    public Products_Order(){

    }

    public Products_Order(String id_Order, String id_Product, int quantity, long amount) {
        this.id_Order = id_Order;
        this.id_Product = id_Product;
        this.quantity = quantity;
        this.amount = amount;
    }

    public String getId_Order() {
        return id_Order;
    }

    public void setId_Order(String id_Order) {
        this.id_Order = id_Order;
    }

    public String getId_Product() {
        return id_Product;
    }

    public void setId_Product(String id_Product) {
        this.id_Product = id_Product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public long getAmount() {
        return amount;
    }

    public void setAmount(long amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "Products_Order{" +
                "id_Order='" + id_Order + '\'' +
                ", id_Product='" + id_Product + '\'' +
                ", quantity=" + quantity +
                ", amount=" + amount +
                '}';
    }
}
