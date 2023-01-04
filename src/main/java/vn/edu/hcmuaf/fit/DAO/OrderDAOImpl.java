package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.controller.Util;
import vn.edu.hcmuaf.fit.model.Address;
import vn.edu.hcmuaf.fit.model.Order;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

public class OrderDAOImpl implements IOrder {
    public boolean checkIdAddress(String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("select * from delivery_address where id=?");
        sta.setString(1, id);
        ResultSet rs = sta.executeQuery();
        if(rs.next()) return false;
        return true;
    }
    public boolean checkIdOrder(String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("select * from orders where id=?");
        sta.setString(1, id);
        ResultSet rs = sta.executeQuery();
        if(rs.next()) return false;
        return true;
    }


    public void addOrder(Order o, Address a) throws SQLException, ClassNotFoundException {
        String idAdd = Util.getRandomId();
        while(!checkIdAddress(idAdd)){
            idAdd = Util.getRandomId();
        }
        DataDB dbAdd = new DataDB();
        PreparedStatement staAdd = dbAdd.getStatement("insert into delivery_address value (?,?,?,?,?");
        staAdd.setString(1, idAdd);
        staAdd.setString(2, a.getId_user());
        staAdd.setString(3, a.getName_receiver());
        staAdd.setString(4, a.getPhone_number());
        staAdd.setString(5, a.getAddress());
        staAdd.executeUpdate();

        String idOrder = Util.getRandomId();
        while(!checkIdOrder(idOrder)){
            idOrder = Util.getRandomId();
        }
        DataDB db = new DataDB();


            PreparedStatement sta = db.getStatement("insert into orders value (?,?,?,?,?, now())");

            sta.setString(1, idOrder);

            sta.setString(2, o.getUserId());


            sta.setString(3, o.getStatus());

            sta.setString(4, idAdd);

            sta.setLong(5,o.getAmount());

            sta.setString(6,o.getNote());

            sta.executeUpdate();

    }

    @Override
    public void addOrder(Order o) throws SQLException, ClassNotFoundException {

    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {

            OrderDAOImpl orderDAO = new OrderDAOImpl();


            orderDAO.addOrder(new
                    Order("1" ,"chuong1","1","111", (long) 15.5,"yeah",new Timestamp(new Date().getTime())
            ) , new Address("1","chuong1",
                    "0792952549","0792952549"));
    }
}
