package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.DB.DBConnect;
import vn.edu.hcmuaf.fit.model.Category;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CategoryDao {


    // get data from MySQL



    public static Category getCategorys() throws SQLException, ClassNotFoundException {

        try {


            DBConnect dbConnect = DBConnect.getInstance();
            Statement statement = dbConnect.get();
            ResultSet rs = statement.executeQuery("SELECT * FROM category WHERE category.ID=\"CG2\"");
            while (rs.next()) {

                Category c = new Category(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));


                return c;

            }

        } catch (Exception e) {


        }
        return null;
    }


    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        CategoryDao dao =new CategoryDao();

        Category c = dao.getCategorys();

        System.out.println(c);


    }



}
