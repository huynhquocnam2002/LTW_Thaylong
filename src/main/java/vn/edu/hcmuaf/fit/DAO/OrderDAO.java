package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.Order;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;

public class OrderDAO {
    public static List<Order> getOrders(String userId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        List<Order> res = new ArrayList<Order>();
        PreparedStatement sta = db.getStatement("select orders.id, status_order.name, delivery_address.id,orders.order_date, orders.id_user, orders.notes from orders, delivery_address,status_order where orders.id_user=? and status_order.id=orders.id_status_order and delivery_address.id=orders.id_delivery_address");
        sta.setString(1, userId);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Order o = new Order(rs.getString(1), rs.getString(5), rs.getString(2), rs.getString(3), rs.getString(6), rs.getDate(4));
            Map<Product, Integer> map = getProductOrder(o.getId());
            o.addProduct(map);
            res.add(o);
        }
        return res;
    }

    public static List<Order> getOrderByUserId(String userId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        List<Order> res = new ArrayList<Order>();
        PreparedStatement sta = db.getStatement("select orders.id ,status_order.name, delivery_address.id,orders.order_date, orders.id_user, orders.notes, orders.amount from orders, delivery_address,status_order where orders.id_user=? and status_order.id=orders.id_status_order and delivery_address.id=orders.id_delivery_address");
        sta.setString(1, userId);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Order o = new Order(rs.getString(1), rs.getString(5), rs.getString(2), rs.getString(3), rs.getString(6), rs.getDate(4));
            o.setAmount(rs.getLong(7));
            Map<Product, Integer> map = getProductOrderNoOption(o.getId());
            o.addProduct(map);
            res.add(o);
        }
        return res;
    }

    public static Map<Product, Integer> getProductOrder(String orderId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Map<Product, Integer> res = new HashMap<Product, Integer>();
        PreparedStatement sta = db.getStatement("select product.id,product.name, product.unit_price, product_order.quantity, product.img, option.value from orders, product_order, product, option where option.id=product_order.id_option and orders.id=? and orders.id=product_order.id_order and option.id_product=product.id");
        sta.setString(1, orderId);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Product product= new Product(rs.getString(1), rs.getString(2), rs.getLong(3), rs.getString(5));
            product.setOptionName(rs.getString(6));
            res.put(product, rs.getInt(4));
        }
        return res;
    }

    public static Map<Product, Integer> getProductOrderNoOption(String orderId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        Map<Product, Integer> res = new HashMap<Product, Integer>();
        PreparedStatement sta = db.getStatement("select product.id,product.name, product.unit_price, product_order.quantity, product.img from orders, product_order, product where product.id=product_order.id_product and orders.id=? and orders.id=product_order.id_order");
        sta.setString(1, orderId);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Product product= new Product(rs.getString(1), rs.getString(2), rs.getLong(3), rs.getString(5));
            res.put(product, rs.getInt(4));
        }
        return res;
    }

    public static List<Order> getAllOrders() throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        List<Order> res = new ArrayList<Order>();
        PreparedStatement sta = db.getStatement("select orders.id, status_order.name, delivery_address.id,orders.order_date, orders.id_user, orders.notes, user.name from orders, delivery_address,status_order, user where status_order.id=orders.id_status_order and delivery_address.id=orders.id_delivery_address and user.id=orders.id_user");
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Order o = new Order(rs.getString(1), rs.getString(5), rs.getString(2), rs.getString(3), rs.getString(6), rs.getDate(4), rs.getString(7));
            Map<Product, Integer> map = getProductOrder(o.getId());
            o.addProduct(map);
            res.add(o);
        }
        return res;
    }

    public static List<Order> getVerifyOrders(List<Order> all) {
        List<Order> res = new ArrayList<Order>();
        for (Order o : all) {
            if (o.getStatus().equals("Chờ xác nhận")) res.add(o);
        }
        return res;
    }


    public static List<Order> getShippingOrders(List<Order> all) {
        List<Order> res = new ArrayList<Order>();
        for (Order o : all) {
            if (o.getStatus().equals("Đang giao")) res.add(o);
        }
        return res;
    }

    public static List<Order> getShippedOrders(List<Order> all) {
        List<Order> res = new ArrayList<Order>();
        for (Order o : all) {
            if (o.getStatus().equals("Đã giao")) res.add(o);
        }
        return res;
    }

    public static List<Order> getCancelRequestOrders(List<Order> all) {
        List<Order> res = new ArrayList<Order>();
        for (Order o : all) {
            if (o.getStatus().equals("Yêu cầu hủy")) res.add(o);
        }
        return res;
    }

    public static List<Order> getCanceledOrders(List<Order> all) {
        List<Order> res = new ArrayList<Order>();
        for (Order o : all) {
            if (o.getStatus().equals("Đã hủy")) res.add(o);
        }
        return res;
    }

    public static long getTurnover() throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        PreparedStatement sta= db.getStatement("SELECT SUM(pr.UNIT_PRICE*p.QUANTITY) from product pr, product_order p, orders o WHERE p.ID_PRODUCT=pr.ID and o.ID_STATUS_ORDER='SO3' and o.ID=p.ID_ORDER;");
        ResultSet rs= sta.executeQuery();
        if (rs.next())
            return rs.getLong(1);
        return 0;
    }

    public static int getNumCompletedOrders() throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        PreparedStatement sta= db.getStatement("SELECT count(id) from orders where ID_STATUS_ORDER=?");
        sta.setString(1,"SO3");
        ResultSet rs= sta.executeQuery();
        rs.next();
        return rs.getInt(1);
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        List<Order> list= getOrderByUserId("U1");
        System.out.println(list.size());
        for (Order o: list){
            System.out.println(o);
        }
        System.out.println();

    }

    public static void changeStatusOrder(String id, String status) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("update orders set id_status_order=? where id=?");
        sta.setString(1, status);
        sta.setString(2, id);
        System.out.println(status);
        sta.executeUpdate();
    }

    public static String getImgOrder(String id) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        PreparedStatement sta= db.getStatement("select p.img from product_order po, product p where po.id_product=p.id and po.id_order=?");
        sta.setString(1, id);
        ResultSet rs= sta.executeQuery();
        if (rs.next())
            return rs.getString(1);
        return null;

    }

    public static boolean containId(String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("select * from orders where id=?");
        sta.setString(1, id);
        ResultSet rs= sta.executeQuery();;
        return rs.next();
    }

    public static void add(Order o) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("insert into orders values (?,?,?,?,?,?,?);");
        sta.setString(1, o.getId());
        sta.setString(2, o.getUserId());
        sta.setString(3, o.getStatus());
        sta.setString(4, o.getDeliveryAddressId());
        sta.setLong(5, o.getAmount());
        sta.setString(6, o.getNote());
        sta.setString(7, o.getDateString());
        sta.executeUpdate();
    }
}
