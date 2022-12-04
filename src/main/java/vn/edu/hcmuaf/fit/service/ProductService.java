package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.model.Product;

import vn.edu.hcmuaf.fit.model.Cart;


import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public class ProductService {

    private static ProductService instance;

    private static Map<String, Product> products = new HashMap<>();

    static {
        products.put("AKA1999", new Product("1",
                "chuong", 690000,
                "imageProduct/product28.jpg",
                6, "5", "salerum", "11", 241,
                new Date("2022-11-20)"), 1, "dads"));

    }

    private ProductService() {
    }

    public static ProductService getInstance() {

        if (instance == null) {
            instance = new ProductService();
        }
        return instance;
    }


    public Product get(String id) {

        return products.get(id);

    }
}

