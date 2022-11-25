package vn.edu.hcmuaf.fit.DB;

import vn.edu.hcmuaf.fit.controller.Util;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.model.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class DataDB {
    private DBConnect dbConnect = DBConnect.getInstance();
    private Statement statement = dbConnect.get();

    public Statement getStatement(){
        return statement;
    }

    public DataDB() throws SQLException, ClassNotFoundException {
    }

    public static Set<Product> getProducts() throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        Set<Product> res = new HashSet<Product>();
        ResultSet rs = db.getStatement().executeQuery("select * from product");
        while (rs.next()) {
            res.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getLong(4), rs.getString(5), rs.getInt(6)));
        }
        return res;
    }

    public static User getUserByPhone(String userName) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        ResultSet rs = db.getStatement().executeQuery("select * from user where phone_number='" + userName+"'");
        if (!rs.first()) return null;
        User res = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getDate(10), rs.getInt(9));
        return res;
    }

    public static User getUserById(String id) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        ResultSet rs = db.getStatement().executeQuery("select * from user where id='" + id+"'");
        if (!rs.first()) return null;
        User res = new User(rs.getString(1), rs.getString(2), rs.getString(4), rs.getString(3), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getDate(10), rs.getInt(9));
        return res;
    }

    public static Map<Product, Integer> getCartItems(User u) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        Map<Product, Integer> res= new HashMap<Product, Integer>();
        ResultSet rs= db.getStatement().executeQuery("select product.*, cart.quantity from cart, product where cart.id_user='"+u.getId()+"' and cart.id_product=product.id");
        while (rs.next()){
            res.put(new Product(rs.getString(1), rs.getString(2), rs.getString(4), rs.getLong(3), rs.getString(5), rs.getInt(6)),rs.getInt(7));
        }
        return res;
    }

    public static boolean register(String id, String phone, String pass) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();
        if (db.getStatement().executeUpdate("insert into user values ('"+id+"','image/user/none.png','user "+id+"','"+phone+"',null,'"+pass+"',null,null,0,'"+dtf.format(now)+"');")==0) return false;
        return true;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {

    }
}
