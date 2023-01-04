package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.Address;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AddressDAO {
    public static boolean containId(String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("select * from delivery_address where id=?");
        sta.setString(1, id);
        ResultSet rs= sta.executeQuery();;
        return rs.next();
    }

    public static void add(Address a) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("insert into delivery_address values (?,?,?,?,?);");
        sta.setString(1, a.getId());
        sta.setString(2, a.getId_user());
        sta.setString(3, a.getName_receiver());
        sta.setString(4, a.getPhone_number());
        sta.setString(5, a.getAddress());
        sta.executeUpdate();
    }
}
