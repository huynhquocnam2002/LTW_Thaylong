package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.model.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class ProductDAO {

    public static Set<Product> getProducts() throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        PreparedStatement sta=db.getStatement("select * from product");
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Product p=new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12));
            p.addOption(OptionDAO.getOptions(p));
            res.add(p);
        }
        return res;
    }

    public static Set<Product> getProductsByStatus(int status) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        PreparedStatement sta=db.getStatement("select * from product where status=?");
        sta.setInt(1,status);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Product p=new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12));
            p.addOption(OptionDAO.getOptions(p));
            res.add(p);
        }
        return res;
    }

    public static Product getProductById(String id) throws SQLException, ClassNotFoundException {
        Product res = null;
        DataDB db = new DataDB();
        PreparedStatement sta=db.getStatement("select * from product where id=?");
        sta.setString(1,id);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            res = new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12));
            res.addOption(OptionDAO.getOptions(res));
        }
        return res;
    }

    public static Set<Product> getProductsKind(String name) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        PreparedStatement sta=db.getStatement("select * from product where product.TAG =?");
        sta.setString(1, name);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Product p=new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12));
            p.addOption(OptionDAO.getOptions(p));
            res.add(p);
        }
        return res;
    }
    // lấy ra những sản phẩm mới thêm
    public static Set<Product> getProductsByCatorynew (String name) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        PreparedStatement sta = db.getStatement("select * from product ,category where  category.ID = product.ID_CATEGORY and category.ID =? ORDER BY UNIT_PRICE ASC  LIMIT 5");
        sta.setString(1, name);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Product p=new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12));
            p.addOption(OptionDAO.getOptions(p));
            res.add(p);
        }

        return res;
    }

    // lấy sản phẩm theo danh mục ORDER BY DESC
    public static Set<Product> getProductsByCatoryDESC(String name) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        PreparedStatement sta = db.getStatement("select * from product ,category where  category.ID = product.ID_CATEGORY and category.ID =? ORDER BY UNIT_PRICE DESC ");
        sta.setString(1, name);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Product p=new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12));
            p.addOption(OptionDAO.getOptions(p));
            res.add(p);
        }

        return res;
    }
    // lấy sản phẩm theo danh mục ORDER BY ASC
    public static Set<Product> getProductsByCatoryASC (String name) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        PreparedStatement sta = db.getStatement("select * from product ,category where  category.ID = product.ID_CATEGORY and category.ID =? ORDER BY UNIT_PRICE ASC ");
        sta.setString(1, name);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Product p=new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12));
            p.addOption(OptionDAO.getOptions(p));
            res.add(p);
        }

        return res;
    }
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        System.out.println(getProductsByCatorynew("1").size());
    }
}
