package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.*;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FooterDAO {

    public static List<Forus> getForus() throws SQLException, ClassNotFoundException{
        DataDB db = new DataDB();
        List<Forus> list = new ArrayList<Forus>();
        PreparedStatement prep = db.getStatement("select * from forus");
        ResultSet rs = prep.executeQuery();
        while (rs.next()){
            list.add(new Forus(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
        }
        return list;
    }
        // nhan hieu
    public static List<Nhanhieu> getNhanhieu() throws SQLException, ClassNotFoundException{
        DataDB db = new DataDB();
        List<Nhanhieu> list = new ArrayList<Nhanhieu>();
        PreparedStatement prep = db.getStatement("select * from nhanhieu");
        ResultSet rs = prep.executeQuery();
        while (rs.next()){
            list.add(new Nhanhieu(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
                    rs.getString(5),rs.getString(6),rs.getString(7) ,rs.getString(8)));
        }
        return list;
    }
    // diue khoan va dieu kien
    public static List<Dieukhoanvadieukien> getDieukhoanvadieukien() throws SQLException, ClassNotFoundException{
        DataDB db = new DataDB();
        List<Dieukhoanvadieukien> list = new ArrayList<Dieukhoanvadieukien>();
        PreparedStatement prep = db.getStatement("select * from dieukhoanvadieukien");
        ResultSet rs = prep.executeQuery();
        while (rs.next()){
            list.add(new Dieukhoanvadieukien(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                    rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9)));
        }
        return list;
    }
    // chi nhanh
    public static List<Chinhanh> getChinhanh() throws SQLException, ClassNotFoundException{
        DataDB db = new DataDB();
        List<Chinhanh> list = new ArrayList<Chinhanh>();
        PreparedStatement prep = db.getStatement("select * from chinhanh");
        ResultSet rs = prep.executeQuery();
        while (rs.next()){
            list.add(new Chinhanh(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4),
                    rs.getString(5)));
        }
        return list;
    }

    // chinh sach bao mat
    public static List<Chinhsachbaomat> getChinhsachbaomat() throws SQLException, ClassNotFoundException{
        DataDB db = new DataDB();
        List<Chinhsachbaomat> list = new ArrayList<Chinhsachbaomat>();
        PreparedStatement prep = db.getStatement("select * from chinhsachbaomat");
        ResultSet rs = prep.executeQuery();
        while (rs.next()){
            list.add(new Chinhsachbaomat(rs.getInt(1), rs.getString(2), rs.getString(3)));
        }
        return list;
    }
    // lay thong tin lien ve chung toi
    public static List<Lienhechungtoi> getLienhechungtoi() throws SQLException, ClassNotFoundException{
        DataDB db = new DataDB();
        List<Lienhechungtoi> list = new ArrayList<Lienhechungtoi>();
        PreparedStatement prep = db.getStatement("select * from lienhechungtoi");
        ResultSet rs = prep.executeQuery();
        while (rs.next()){
            list.add(new Lienhechungtoi(rs.getString(1), rs.getString(2), rs.getString(3)));
        }
        return list;
    }

    // lay danh sach voucher
    public static List<Voucher_footer> getVoucher_footer() throws SQLException, ClassNotFoundException{
        DataDB db = new DataDB();
        List<Voucher_footer> list = new ArrayList<Voucher_footer>();
        PreparedStatement prep = db.getStatement("select * from voucher_footer");
        ResultSet rs = prep.executeQuery();
        while (rs.next()){
            list.add(new Voucher_footer(rs.getString(1), rs.getString(2), rs.getString(3)));
        }
        return list;
    }
//    public static void main(String[] args) throws SQLException, ClassNotFoundException {
//        List<Lienhechungtoi> list =  FooterDAO.getLienhechungtoi();
//        for (int i = 0; i <list.size() ; i++) {
//                System.out.println(list.get(i).toString());
//        }
//    }

}
