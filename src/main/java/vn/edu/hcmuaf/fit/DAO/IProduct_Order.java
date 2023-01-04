package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.model.Order;
import vn.edu.hcmuaf.fit.model.Products_Order;

import java.sql.SQLException;

public interface IProduct_Order {

    public void addProduct_Order(Products_Order productsOrder) throws SQLException, ClassNotFoundException;
}
