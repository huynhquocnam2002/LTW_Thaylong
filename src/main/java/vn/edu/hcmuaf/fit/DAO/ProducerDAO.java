package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.Producer;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProducerDAO {

    public static List<Producer> getProducers() throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta= db.getStatement("SELECT * FROM producer");
        List<Producer> res= new ArrayList<Producer>();
        ResultSet rs= sta.executeQuery();
        while (rs.next())
            res.add(new Producer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
        return res;
    }
    public static Producer getProducersOject(String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("SELECT * FROM producer , product WHERE producer.ID = product.ID_PRODUCER and product.ID  =?");
        sta.setString(1, id);
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Producer p = new Producer(
                    rs.getString(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getInt(4));
            return p;
        }
        return null;
    }
}
