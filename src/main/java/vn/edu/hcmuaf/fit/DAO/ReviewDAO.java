package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.Review;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReviewDAO {
    public static List<Review> getReview(String id) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        List<Review> res= new ArrayList<Review>();
        PreparedStatement sta=db.getStatement("SELECT * FROM review , product WHERE review.ID_PRODUCT = product.ID and product.ID = ? ");
        sta.setString(1, id);
        ResultSet rs= sta.executeQuery();
        while (rs.next())
            res.add(new Review(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getDate(6)));
        return res;
    }
    public static boolean checkIDreview(String id) throws SQLException, ClassNotFoundException {
        for(Review rv : getReview(id)){
            if(rv.getId() == id) return true;
        }
        return false;
    }
    public static boolean addreview(String id , String idsp , String iduser, String comment , String date) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        PreparedStatement sta = db.getStatement("insert into review values (?,?,?,4,?,?)");
        sta.setString(1, id);
        sta.setString(2, iduser);
        sta.setString(3, idsp);
        sta.setString(4, comment);
        sta.setString(5, date);

        return sta.execute();
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        List<Review> l = getReview("PR2");

        System.out.println(l.size());
    }
}
