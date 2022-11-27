package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.DB.DBConnect;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ProductDao {

    // get data from MySQL



    public static   Product getProducts() throws SQLException, ClassNotFoundException {

        try {


            DBConnect dbConnect = DBConnect.getInstance();
            Statement statement = dbConnect.get();
            ResultSet rs = statement.executeQuery("SELECT  * FROM product WHERE product.ID = \"17\"");

            while (rs.next()) {
                Product p = new Product
                        (rs.getString(1),
                                rs.getString(2),
                                rs.getLong(3),
                                rs.getString(4),
                                rs.getInt(5),
                                rs.getString(6),
                                rs.getString(7),
                                rs.getString(8),
                                rs.getInt(9),
                                rs.getDate(10),
                                rs.getInt(11),
                                rs.getString(12));


            }

        } catch (Exception e) {


        }
        return null;
    }


    public static void main(String[] args) throws SQLException, ClassNotFoundException {



        Product p = ProductDao.getProducts();

        System.out.println(p.getName());

    }
}
