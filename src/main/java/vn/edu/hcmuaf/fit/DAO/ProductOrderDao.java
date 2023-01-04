package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ProductOrderDao {
    public static void add(String ido, String idp, int quantity, long amount, String idOption) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        PreparedStatement sta = db.getStatement("insert into product_order values (?,?,?,?,?);");
        sta.setString(1, ido);
        sta.setString(2, idp);
        sta.setInt(3, quantity);
        sta.setLong(4, amount);
        sta.setString(5, idOption);
        sta.executeUpdate();
    }
}
