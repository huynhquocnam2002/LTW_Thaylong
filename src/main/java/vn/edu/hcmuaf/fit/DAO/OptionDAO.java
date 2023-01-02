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
            res.add(new Option(rs.getString(1), rs.getString(2), rs.getLong(3), rs.getInt(4), rs.getString(5), rs.getInt(6)));
        }
        return res;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Product p=ProductDAO.getProductById("PR1");
        for (Option pr: getOptions(p)){
            System.out.println(pr);
        }
    }
}
