package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.model.Order;
import vn.edu.hcmuaf.fit.model.Products_Order;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Product_OrderImpl implements IProduct_Order {


    @Override
    public void addProduct_Order(Products_Order productsOrder) throws SQLException, ClassNotFoundException {

        DataDB db = new DataDB();


        try {

            PreparedStatement sta = db.getStatement("insert into product_order value (?,?,?,?");

            sta.setString(1, productsOrder.getId_Order());

            sta.setString(2, productsOrder.getId_Product());

            sta.setInt(3, productsOrder.getQuantity());

            sta.setLong(4, productsOrder.getAmount());

            sta.setString(5, productsOrder.getId_Option());


            sta.executeUpdate();


        } catch (Exception ex) {

            ex.printStackTrace();
        }
    }
}



