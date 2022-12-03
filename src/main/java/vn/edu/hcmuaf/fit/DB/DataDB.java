package vn.edu.hcmuaf.fit.DB;

import vn.edu.hcmuaf.fit.controller.Util;
import vn.edu.hcmuaf.fit.model.*;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class DataDB {
    private DBConnect dbConnect = DBConnect.getInstance();
    private Statement statement = dbConnect.get();

    public Statement getStatement() {
        return statement;
    }

    public DataDB() throws SQLException, ClassNotFoundException {
    }

    public static Set<Product> getProducts() throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        ResultSet rs = db.getStatement().executeQuery("select * from product");
        while (rs.next()) {
            res.add(new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12)));
        }
        //m chỉnh lại theo cấu trúc hồi nảy á là ok
        return res;
    }

    //
    public static User getUserByEmail(String userName) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        ResultSet rs = db.getStatement().executeQuery("select * from user where email='" + userName + "'");
        if (!rs.first()) return null;
        User res = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getDate(10), rs.getInt(9));
        return res;
    }

    public static User getUserById(String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        ResultSet rs = db.getStatement().executeQuery("select * from user where id='" + id + "'");
        if (!rs.first()) return null;
        User res = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getDate(10), rs.getInt(9));
        return res;
    }

    public static Map<Product, Integer> getCartItems(User u) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Map<Product, Integer> res = new HashMap<Product, Integer>();
        ResultSet rs = db.getStatement().executeQuery("select product.*, cart.quantity from cart, product where cart.id_user='" + u.getId() + "' and cart.id_product=product.id");
        while (rs.next()) {
            res.put(new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12)), rs.getInt(13));
        }
        return res;
    }

    public static boolean register(String id, String email, String pass) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();
        if (db.getStatement().executeUpdate("insert into user values ('" + id + "','image/user/none.png','user " + id + "',null,'" + email + "','" + pass + "',null,null,0,'" + dtf.format(now) + "');") == 0)
            return false;
        return true;
    }

    public static boolean activeUser(User u) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        if (db.getStatement().executeUpdate("update user set status=1 where id='" + u.getId() + "';") == 0)
            return false;
        return true;
    }

    public static List<Order> getOrders(String userId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        List<Order> res = new ArrayList<Order>();
        ResultSet rs = db.getStatement().executeQuery("select orders.id, status_order.name, delivery_address.id,orders.order_date from orders, delivery_address,status_order where orders.id_user='" + userId + "' and status_order.id=orders.id_status_order and delivery_address.id=orders.id_delivery_address");
        while (rs.next()) {
            Order o = new Order(rs.getString(1), userId, rs.getString(2), rs.getString(3), null, rs.getDate(4));
            Map<Product, Integer> map = getProductOrder(o.getId());
            o.addProduct(map);
            res.add(o);
        }
        return res;
    }

    public static Map<Product, Integer> getProductOrder(String orderId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Map<Product, Integer> res = new HashMap<Product, Integer>();
        ResultSet rs = db.getStatement().executeQuery("select product.id,product.name, product.unit_price, product_order.quantity, product.img from orders, product_order, product where orders.id='" + orderId + "' and orders.id=product_order.id_order and product_order.id_product=product.id");
        while (rs.next())
            res.put(new Product(rs.getString(1), rs.getString(2), rs.getLong(3), rs.getString(5)), rs.getInt(4));
        return res;
    }

    public static List<Voucher> getVouchers(String userId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        List<Voucher> res = new ArrayList<Voucher>();
        ResultSet rs = db.getStatement().executeQuery("select voucher.*, voucher_type.name, user_voucher.quantity from voucher, user_voucher, voucher_type where user_voucher.id_user='" + userId + "' and user_voucher.id_voucher=voucher.id and voucher.id_type=voucher_type.id");
        while (rs.next()) {
            int quantity = rs.getInt(10);
            for (int i = 0; i < quantity; i++)
                res.add(new Voucher(rs.getString(1), rs.getString(9), rs.getString(3), rs.getLong(4), rs.getLong(5), rs.getDate(6), rs.getDate(7), rs.getInt(8)));
        }
        return res;
    }

    public static boolean changeInfoUser(String userId, String name, String email, String phone, String gender, String bday, String img) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();

        int i = db.getStatement().executeUpdate("update user set name='" + name + "', email='" + email + "', phone_number='" + phone + "', gender='" + gender + "', birthday='" + bday + "',img='" + img + "' where id='" + userId + "';");
        if (i == 0)
            return false;
        else return true;
    }

    public static List<Category> getCategorys() throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        List<Category> res = new ArrayList<Category>();
        ResultSet rs = db.getStatement().executeQuery("SELECT * FROM category WHERE category.ID =\"CG2\"");
        while (rs.next())
            res.add(new Category(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
        return res;
    }

    public static Product getProductById(String id) throws SQLException, ClassNotFoundException {
        Product res = null;
        DataDB db = new DataDB();
        ResultSet rs = db.getStatement().executeQuery("select * from product where id='" + id + "';");
        while (rs.next()) {
            res = new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12));
        }
        return res;
    }

    public static Category getCategorysObject() throws SQLException, ClassNotFoundException {
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

    public static Producer getProducersOject() throws SQLException, ClassNotFoundException {
        try {
            DBConnect dbConnect = DBConnect.getInstance();
            Statement statement = dbConnect.get();
            ResultSet rs = statement.executeQuery("SELECT * FROM producer WHERE producer.ID=\"PRER10\"");
            while (rs.next()) {
                Producer p = new Producer(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
                return p;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static Review getReviewObjects(String id_user) throws SQLException, ClassNotFoundException {
        Review res = null;
        DataDB db = new DataDB();
        ResultSet rs = db.getStatement().executeQuery("select * from review where id_user='" + id_user + "';");
        while (rs.next()) {
            res = new Review(rs.getString(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getInt(4),
                    rs.getString(5),
                    rs.getDate(6));



        }
        return res;
    }

    public static Set<Product> getProductsKind(String name) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Set<Product> res = new HashSet<Product>();
        ResultSet rs = db.getStatement().executeQuery("select * from product where product.TAG ='" + name + "'");
        while (rs.next()) {
            res.add(new Product(rs.getString(1), rs.getString(2), rs.getLong(3),
                    rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                    rs.getString(8), rs.getInt(9), rs.getDate(10), rs.getInt(11), rs.getString(12)));
        }
        //
        return res;
    }

    public static boolean changeUserPassword(String email, String pass) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        int res = db.getStatement().executeUpdate("update user set password='" + pass + "' where email='" + email + "'");
        if (res != 0) return true;
        return false;
    }

    public static List<Announcement> getAnnounmentByUserId(String userId) throws SQLException, ClassNotFoundException {
        List<Announcement> res = new ArrayList<Announcement>();
        DataDB db = new DataDB();
        ResultSet rs = db.getStatement().executeQuery("select announcement.* from announcement, orders where orders.ID_USER='" + userId + "' and orders.id=announcement.id_orders;");
        while (rs.next()) {
            res.add(new Announcement(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7)));
        }
        res.sort(null);
        return res;
    }

    public static boolean readAnnouncement(String anmId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        int res = db.getStatement().executeUpdate("update announcement set status=1 where id='" + anmId + "';");
        if (res == 0) return false;
        return true;
    }

    public static boolean readAllAnnouncement(String userId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        int res = 0;
        ResultSet orderIds = db.getStatement().executeQuery("select id from orders where id_user='" + userId + "';");
        while (orderIds.next()) {
            String orderId = orderIds.getString(1);
            res += db.getStatement().executeUpdate("update announcement set status=1 where id='" + orderId + "';");
        }
        if (res == 0) return false;
        return true;
    }

    public static boolean deleteAllAnnouncement(String userId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        int res = 0;
        ResultSet orderIds = db.getStatement().executeQuery("select id from orders where id_user='" + userId + "';");
        while (orderIds.next()) {
            String orderId = orderIds.getString(1);
            res += db.getStatement().executeUpdate("delete from announcement where id_orders='" + orderId + "';");
        }
        if (res == 0) return false;
        return true;
    }

    public static List<Voucher> getNewestVouchers(String userId) throws SQLException, ClassNotFoundException {
        List<Voucher> res = new ArrayList<Voucher>();
        List<Voucher> all = getVouchers(userId);
        for (Voucher v : all) {
            if (Util.minusDateToHours(v.getStartDate(), new Date())>0) res.add(v);
        }
        return res;
    }

    public static List<Voucher> getOldVouchers(String userId) throws SQLException, ClassNotFoundException {
        List<Voucher> res = new ArrayList<Voucher>();
        List<Voucher> all = getVouchers(userId);
        for (Voucher v : all) {
            if (Util.minusDateToHours(new Date(), v.getStartDate())>0) res.add(v);
        }
        return res;
    }

    public static List<Voucher> getFreeshipVouchers(String userId) throws SQLException, ClassNotFoundException {
        List<Voucher> res = new ArrayList<Voucher>();
        List<Voucher> all = getVouchers(userId);
        for (Voucher v : all) {
            if (v.getType().equals("Miễn phí vận chuyển")) res.add(v);
        }
        return res;
    }

    public static List<Voucher> getDiscountVouchers(String userId) throws SQLException, ClassNotFoundException {
        List<Voucher> res = new ArrayList<Voucher>();
        List<Voucher> all = getVouchers(userId);
        for (Voucher v : all) {
            if (v.getType().equals("Giảm giá")) res.add(v);
        }
        return res;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
//        for (Voucher v : getNewestVouchers("U1") ){
//            System.out.println(v.getVoucherDescription());

//        }

        System.out.println(getReviewObjects("1").getReview_date());

    }
}