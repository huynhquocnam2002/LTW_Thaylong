package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.controller.Util;
import vn.edu.hcmuaf.fit.model.Voucher;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

public class VoucherDAO {
    public static List<Voucher> getVouchers(String userId) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        List<Voucher> res = new ArrayList<Voucher>();
        PreparedStatement sta=db.getStatement("select voucher.*, voucher_type.name, user_voucher.quantity from voucher, user_voucher, voucher_type where user_voucher.id_user=? and user_voucher.id_voucher=voucher.id and voucher.id_type=voucher_type.id");
        sta.setString(1,userId);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            int quantity = rs.getInt(11);
            for (int i = 0; i < quantity; i++)
                res.add(new Voucher(rs.getString(1), rs.getString(10), rs.getString(3), rs.getLong(4), rs.getLong(5), rs.getDate(6), rs.getDate(7), rs.getInt(8)));
        }
        return res;
    }

    public static List<Voucher> getNewestVouchers(String userId) throws SQLException, ClassNotFoundException {
        List<Voucher> res = new ArrayList<Voucher>();
        List<Voucher> all = getVouchers(userId);
        for (Voucher v : all) {
            if (Util.minusDateToHours(v.getStartDate(), new Date()) > 0) res.add(v);
        }
        return res;
    }

    public static List<Voucher> getOldVouchers(String userId) throws SQLException, ClassNotFoundException {
        List<Voucher> res = new ArrayList<Voucher>();
        List<Voucher> all = getVouchers(userId);
        for (Voucher v : all) {
            if (Util.minusDateToHours(new Date(), v.getStartDate()) > 0) res.add(v);
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

    public static List<Voucher> getListVoucher() throws SQLException, ClassNotFoundException {
        List<Voucher> res= new ArrayList<Voucher>();
        DataDB db = new DataDB();
        PreparedStatement sta= db.getStatement("select *, t.name from voucher v, voucher_type t where v.id_type=t.id");
        ResultSet rs= sta.executeQuery();
        while (rs.next())
            res.add(new Voucher(rs.getString(1),rs.getString(10), rs.getString(3), rs.getLong(4), rs.getLong(5), rs.getDate(6), rs.getDate(7), rs.getInt(8), rs.getString(9)));
        return res;
    }

    public static List<Voucher> getListVoucherByStatus(List<Voucher> list, int status ){
        List<Voucher> res = new ArrayList<Voucher>();
        for (Voucher v: list){
            if (v.getStatus()==status) res.add(v);
        }
        return res;
    }

    public static void addVoucher(Voucher voucher) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        PreparedStatement sta = db.getStatement("insert into voucher values (?,?,?,?,?,?,?,?,?)");
        sta.setString(1,voucher.getId());
        sta.setString(2, voucher.getType());
        sta.setString(3, voucher.getName());
        sta.setLong(4, voucher.getDiscount());
        sta.setLong(5, voucher.getMinPrice());
        sta.setDate(6, new java.sql.Date(voucher.getStartDate().getYear(), voucher.getStartDate().getMonth(), voucher.getStartDate().getDate()));
        sta.setDate(7, new java.sql.Date(voucher.getEndDate().getYear(), voucher.getEndDate().getMonth(), voucher.getEndDate().getDate()));
        sta.setInt(8, voucher.getStatus());
        sta.setString(9, voucher.getDescription());
        sta.executeUpdate();
    }

    public static void changeInfo(Voucher voucher) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("update voucher set id_type=?, name=?, discount=?, min_price=?, start_date=?, end_date=?, status=?, description=? where id=?");
        sta.setString(9,voucher.getId());
        sta.setString(1, voucher.getType());
        sta.setString(2, voucher.getName());
        sta.setLong(3, voucher.getDiscount());
        sta.setLong(4, voucher.getMinPrice());
        sta.setDate(5, new java.sql.Date(voucher.getStartDate().getYear(), voucher.getStartDate().getMonth(), voucher.getStartDate().getDate()));
        sta.setDate(6, new java.sql.Date(voucher.getEndDate().getYear(), voucher.getEndDate().getMonth(), voucher.getEndDate().getDate()));
        sta.setInt(7, voucher.getStatus());
        sta.setString(8, voucher.getDescription());
        sta.executeUpdate();
    }

    public static boolean containID(String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("select * from voucher where id=?");
        sta.setString(1, id);
        ResultSet rs= sta.executeQuery();
        return rs.next();
    }

    public static Voucher getVoucher(String id) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        PreparedStatement sta= db.getStatement("select * from voucher where id=?");
        sta.setString(1, id);
        ResultSet rs= sta.executeQuery();
        if (rs.next()) return new Voucher(rs.getString(1), rs.getString(2), rs.getString(3),rs.getLong(4), rs.getLong(5), rs.getDate(6), rs.getDate(7), rs.getInt(8), rs.getString(9));
        return null;
    }

    public static void changeStatus(String id, int status) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        PreparedStatement sta= db.getStatement("update voucher set status=? where id=?");
        sta.setInt(1, status);
        sta.setString(2, id);
        sta.executeUpdate();
    }

    public static void active(String id) throws SQLException, ClassNotFoundException {
        changeStatus(id,1);
    }

    public static void unactive(String id) throws SQLException, ClassNotFoundException {
        changeStatus(id,0);
    }

    public static Map<String, Long> getVoucherPay(String uId, long price) throws SQLException, ClassNotFoundException {
        Map<String, Long> res= new HashMap<String, Long>();
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("select v.id, v.discount from voucher v, user_voucher u where v.id=u.id_voucher and u.id_user=? and min_price<? and u.quantity>0");
        sta.setString(1, uId);
        sta.setLong(2, price);
        ResultSet rs= sta.executeQuery();
        while (rs.next())
            res.put(rs.getString(1), rs.getLong(2));
        return res;
    }

    public static void remove(String idu, String idv) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("update user_voucher set QUANTITY=(SELECT QUANTITY-1 FROM user_voucher where ID_USER=? and ID_VOUCHER=?) where ID_USER=? and ID_VOUCHER=?");
        sta.setString(1, idu);
        sta.setString(2, idv);
        sta.setString(3, idu);
        sta.setString(4, idv);
        sta.executeUpdate();
    }



    public static void main(String[] args) throws SQLException, ClassNotFoundException, ParseException {
        Map<String, Long> v=getVoucherPay("U1", 1000000);
        System.out.println(v.size());
    }
}
