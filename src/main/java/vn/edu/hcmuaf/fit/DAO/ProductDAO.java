package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.model.User;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class ProductDAO {

    public static Set<Product> getProducts() throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        PreparedStatement sta=db.getStatement("select product.*, category.name from product, category where category.id=product.id_category");
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Product p=new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(13), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12));
            p.addOption(OptionDAO.getOptions(p));
            res.add(p);
        }
        return res;
    }

    public static Set<Product> getProductsByStatus(Set<Product> set,int status) throws SQLException, ClassNotFoundException {
        Set<Product> res = new HashSet<Product>();
        for (Product p: set){
            if (p.getStatus()==status) res.add(p);
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
    // lấy ra những sản phẩm mới thêm cua danh muc
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

    // lấy ra những sản phẩm mới thêm
    public static Set<Product> getProductsnew (String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        PreparedStatement sta = db.getStatement("SELECT * FROM product WHERE product.ID_CATEGORY = (SELECT product.ID_CATEGORY FROM   product WHERE product.ID = ? ) GROUP BY product.`NAME` LIMIT 10");
        sta.setString(1, id);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            res.add(new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12)));
        }

        return res;
    }
    // lấy ra những sản phẩm mới thêm
    public static Set<Product> getProductsSeachnew (String name) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        PreparedStatement sta = db.getStatement("select * from product where   product.NAME  LIKE ? LIMIT 10");
        sta.setString(1, "%"+ name + "%");
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            res.add(new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12)));
        }

        return res;
    }

    // lấy ra những sản phẩm lien quan
    public static Set<Product> getProductsconnection (String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        PreparedStatement sta = db.getStatement("SELECT * FROM product WHERE product.ID_CATEGORY = (SELECT product.ID_CATEGORY FROM   product WHERE product.ID = ? ) GROUP BY product.`NAME`");
        sta.setString(1, id);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            res.add(new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12)));
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
    // lấy sản phẩm theo Seach ORDER BY DESC
    public static Set<Product> getProductSeachDESC(String name) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        PreparedStatement sta = db.getStatement("select * from product where   product.NAME  LIKE ? ORDER BY product.UNIT_PRICE DESC ");
        sta.setString(1,"%"+ name + "%");
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            res.add(new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12)));
        }

        return res;
    }
    // lấy sản phẩm theo Seach ORDER BY ASC
    public static Set<Product> getProductSeachASC (String name) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        PreparedStatement sta = db.getStatement("select * from product where   product.NAME  LIKE ? ORDER BY product.UNIT_PRICE ASC ");
        sta.setString(1, "%"+ name + "%");
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            res.add(new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12)));
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
    // lấy sản phẩm có tên " . . . "
    public static Set<Product> getProductSeach(String name) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        PreparedStatement sta = db.getStatement("select * from product where   product.NAME  LIKE ?");
        sta.setString(1, "%"+ name +"%");
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            res.add(new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12)));
        }
        //
        return res;
    }
    public static void stopSellProduct(String id) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        PreparedStatement sta= db.getStatement("update product set status=2 where id=?");
        sta.setString(1, id);
        sta.executeUpdate();
    }

    public static void addProduct(Product p) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta= db.getStatement("Insert into product values (?,?,?,?,?,?,?,?,?,?,?,?)");
        sta.setString(1, p.getId());
        sta.setString(2,p.getName());
        sta.setLong(3, p.getPrice());
        sta.setString(4, p.getImg());
        sta.setInt(5, p.getIns());
        sta.setString(6, p.getCategory());
        sta.setString(7, p.getTag());
        sta.setString(8, p.getID_producer());
        sta.setInt(9, p.getStatus());
        sta.setDate(10, new Date(p.getAdd_date().getYear(), p.getAdd_date().getMonth(), p.getAdd_date().getDate()));
        sta.setInt(11, p.getQuantity());
        sta.setString(12, p.getDetail());
        sta.executeUpdate();
    }
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
//        Set<Product> products= getProducts();
//        System.out.println(products.size());
//        for (Product p: products){
//            System.out.println(p.getStatus());
//        }
        java.util.Date d = new java.util.Date(2022,12,10);
        System.out.println(d.getDay());
        System.out.println(d.getDate());
    }
}
