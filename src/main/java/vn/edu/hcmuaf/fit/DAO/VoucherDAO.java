package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.controller.Util;
import vn.edu.hcmuaf.fit.model.Voucher;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        List<Voucher> vouchers= getVouchers("U1");
        for (Voucher v: vouchers){
            System.out.println(v);
        }
    }
}
