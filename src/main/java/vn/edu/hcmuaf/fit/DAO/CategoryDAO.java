package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DBConnect;
import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.Category;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {
    public static List<Category> getCategory() throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        List<Category> list = new ArrayList<Category>();
        PreparedStatement sta = db.getStatement("select * from category");
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            list.add(new Category(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
        }
        return list;
    }

    public static List<Category> getCategoryHeader() throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        List<Category> list = new ArrayList<Category>();
        PreparedStatement sta = db.getStatement("select * from category WHERE category.ID =? || category.ID = ? || category.ID = ?|| category.ID = ?|| category.ID = ?|| category.ID = ?|| category.ID = ?|| category.ID = ?");
        sta.setString(1, "1");
        sta.setString(2, "2");
        sta.setString(3, "3");
        sta.setString(4, "5");
        sta.setString(5, "6");
        sta.setString(6, "8");
        sta.setString(7, "9");
        sta.setString(8, "10");

        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            list.add(new Category(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
        }
        return list;
    }

    public static Category getCategorysObject(String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("SELECT * FROM category WHERE category.ID=?");
        sta.setString(1, id);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Category c = new Category(
                    rs.getString(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getInt(4));
            return c;
        }
        return null;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        System.out.println(getCategorysObject("1").getName());
    }
}
