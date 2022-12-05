package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.Review;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        List<Review> l = getReview("PR1");

        System.out.println(l.size());
    }
}
