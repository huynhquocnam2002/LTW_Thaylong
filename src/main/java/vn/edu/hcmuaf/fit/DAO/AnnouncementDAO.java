package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.Announcement;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AnnouncementDAO {
    public static List<Announcement> getAnnounmentByUserId(String userId) throws SQLException, ClassNotFoundException {
        List<Announcement> res = new ArrayList<Announcement>();
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("select announcement.* from announcement, orders where orders.ID_USER=? and orders.id=announcement.id_orders;");
        sta.setString(1, userId);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            res.add(new Announcement(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7)));
        }
        res.sort(null);
        return res;
    }

    public static boolean readAnnouncement(String anmId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("update announcement set status=1 where id=?;");
        sta.setString(1, anmId);
        return sta.execute();
    }

    public static boolean readAllAnnouncement(String userId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        boolean res = true;
        PreparedStatement sta = db.getStatement("select id from orders where id_user=?;");
        sta.setString(1, userId);
        List<String> orderId = new ArrayList<String>();
        ResultSet orderIds = sta.executeQuery();
        while (orderIds.next()) {
            orderId.add(orderIds.getString(1));
        }
        orderIds.close();
        for (String st : orderId) {
            sta = db.getStatement("update announcement set status=1 where id_orders=?;");
            sta.setString(1, st);
            res &= sta.execute();
        }
        return res;
    }

    public static boolean deleteAllAnnouncement(String userId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        boolean res = true;
        List<String> orderId = new ArrayList<String>();
        PreparedStatement sta = db.getStatement("select id from orders where id_user=?;");
        sta.setString(1, userId);
        ResultSet orderIds = sta.executeQuery();
        while (orderIds.next()) {
            orderId.add(orderIds.getString(1));
        }
        orderIds.close();
        for (String st : orderId) {
            sta = db.getStatement("delete from announcement where id_orders=?;");
            sta.setString(1, st);
            res &= sta.execute();
        }
        return res;
    }

    public static boolean containID(String id) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        PreparedStatement sta= db.getStatement("select * from announcement where id=?");
        sta.setString(1, id);
        ResultSet rs=sta.executeQuery();
        return rs.next();
    }

    public static void addAnnouncement(Announcement a) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        PreparedStatement sta = db.getStatement("insert into announcement values (?,?,?,?,?,?,?)");
        sta.setString(1, a.getId());
        sta.setString(2, a.getOrderID());
        sta.setString(3, a.getName());
        sta.setString(4, a.getImg());
        sta.setString(5, a.getContent());
        sta.setString(6, a.getTime());
        sta.setInt(7, 0);
        sta.executeUpdate();
    }
}
