package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;

public class Cart implements Serializable {

    HashMap<String, Product> data;

    User custommers;

    long total;

    int quantity;

    public Cart() {


        data = new HashMap<String, Product>();

        custommers = new User();

        total = 0;

        quantity = 0;


    }

    public Cart(User custommers, long total, int quantity) {

        data = new HashMap<>();

        this.custommers = custommers;
        this.total = total;
        this.quantity = quantity;
    }

    public void put(Product p) {

        if (data.containsKey(p.getKey())) {

            Product p1 = data.get(p.getKey());

            p1.setQuantity(p1.getQuantity() + 1);

            data.put(p.getKey(), p1);

        } else {

            data.put(p.getKey(), p);

        }


        updateTotalMoneyAndQuantity();


    }
    private void put (String key ,int quantity){


        if (data.containsKey(key)) {

            Product p1 = data.get(key);

            p1.setQuantity(quantity);

            data.put(key, p1);


        }
        updateTotalMoneyAndQuantity();


    }

    public void updates(Product p){

        if(data.containsKey(p.getKey())){

            data.put(p.getKey(),p);


        }
    }

    public void remove (String key){

         data.remove(key);

         updateTotalMoneyAndQuantity();
    }
    private void updateTotalMoneyAndQuantity() {

        total = 0;

        quantity = 0;

        for (Product p : data.values()) {


            total += p.getQuantity() * p.getPrice();

            quantity += p.getQuantity();
        }

    }

    public Collection<Product> getListProduct() {

         return data.values();
    }
}
