package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.Option;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OptionDAO {
    public static List<Option> getOptions(Product p) throws SQLException, ClassNotFoundException {
        List<Option> res = new ArrayList<Option>();
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("select * from option where id_product=?");
        sta.setString(1, p.getId());
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            res.add(new Option(rs.getString(1), rs.getString(3), rs.getLong(4), rs.getInt(5), rs.getString(6), rs.getInt(7)));
        }
        return res;
    }

    public static boolean isContainID(String id) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        PreparedStatement sta = db.getStatement("select * from option where id=?");
        sta.setString(1, id);
        ResultSet rs=sta.executeQuery();
        if (rs.next()) return true;
        return false;
    }

    public static void addOption(String idProduct, Option option) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        PreparedStatement sta = db.getStatement("insert into option values (?,?,?,?,?,?,?);");
        sta.setString(1, option.getId());
        sta.setString(2, idProduct);
        sta.setString(3, option.getValue());
        sta.setLong(4, option.getPrice());
        sta.setInt(5, option.getQuantity());
        sta.setString(6, option.getImg());
        sta.setInt(7, option.getStatus());
        sta.executeUpdate();
    }

    public static Option getOption(String id) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        PreparedStatement sta= db.getStatement("select * from option where id=?");
        sta.setString(1, id);
        ResultSet rs= sta.executeQuery();
        if (rs.next()) return new Option(rs.getString(1), rs.getString(3),rs.getLong(4), rs.getInt(5), rs.getString(6),rs.getInt(7));
        else return null;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Product p = ProductDAO.getProductById("PR47");
        for (Option pr : getOptions(p)) {
            System.out.println(pr);
        }
    }

    public static void changeInfo(Option option) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta= db.getStatement("update option set value=?, price=?, quantity=?, img=?, status=? where id=?");
        sta.setString(1, option.getValue());
        sta.setLong(2, option.getPrice());
        sta.setInt(3, option.getQuantity());
        sta.setString(4, option.getImg());
        sta.setInt(5, option.getStatus());
        sta.setString(6, option.getId());
        sta.executeUpdate();
    }

}
