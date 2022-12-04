package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.Order;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrderDAO {

    public static List<Order> getOrders(String userId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        List<Order> res = new ArrayList<Order>();
        PreparedStatement sta=db.getStatement("select orders.id, status_order.name, delivery_address.id,orders.order_date from orders, delivery_address,status_order where orders.id_user=? and status_order.id=orders.id_status_order and delivery_address.id=orders.id_delivery_address");
        sta.setString(1, userId);
        ResultSet rs = sta.executeQuery();
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
        PreparedStatement sta=db.getStatement("select product.id,product.name, product.unit_price, product_order.quantity, product.img from orders, product_order, product where orders.id=? and orders.id=product_order.id_order and product_order.id_product=product.id");
        sta.setString(1, orderId);
        ResultSet rs = sta.executeQuery();
        while (rs.next())
            res.put(new Product(rs.getString(1), rs.getString(2), rs.getLong(3), rs.getString(5)), rs.getInt(4));
        return res;
    }
}