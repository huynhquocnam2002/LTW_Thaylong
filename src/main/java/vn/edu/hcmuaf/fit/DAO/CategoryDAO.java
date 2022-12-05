package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class CategoryDAO {
    public static List<Category> getCategory() throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        List<Category> list = new ArrayList<Category>();
        PreparedStatement sta = db.getStatement("select * from category");
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            list.add(new Category(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
        }
        return list;
    }

    // lay danh sách sản phẩm theo danh mục
    public static Set<Product> getProductsByCatory(String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> list = new HashSet<Product>();
        PreparedStatement sta = db.getStatement("select * from product ,category where  category.ID = product.ID_CATEGORY and category.ID =?");
        sta.setString(1, id);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            list.add(new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12)));
        }
        return list;
    }
    // lay ten danh muc
    public static List<String> getnameCatory(String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        List<String> list = new ArrayList<String>();
        PreparedStatement sta = db.getStatement("select NAME from category where  category.ID =?");
        sta.setString(1, id);
        ResultSet rs = sta.executeQuery();

        while (rs.next()) {
            list.add(rs.getString(1));
        }

        System.out.println(list.get(0));
        return list;
    }
    public static List<Category> getCategoryHeader() throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        List<Category> list = new ArrayList<Category>();
        PreparedStatement sta = db.getStatement("select * from category WHERE category.ID =? || category.ID = ? || category.ID = ?|| category.ID = ?|| category.ID = ?|| category.ID = ?|| category.ID = ?|| category.ID = ?");
        sta.setString(1, "1");
        sta.setString(2, "2");
        sta.setString(3, "3");
        sta.setString(4, "5");
        sta.setString(5, "6");
        sta.setString(6, "8");
        sta.setString(7, "9");
        sta.setString(8, "10");

        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            list.add(new Category(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
        }
        return list;
    }

    public static Category getCategorysObject(String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("SELECT * FROM category ,product WHERE category.ID = product.ID_CATEGORY and product.ID =?");
        sta.setString(1, id);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Category c = new Category(
                    rs.getString(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getInt(4));
            return c;
        }
        return null;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
       Set<Product> l= getProductsByCatory("1");
        System.out.println(l.size());
    }
}
