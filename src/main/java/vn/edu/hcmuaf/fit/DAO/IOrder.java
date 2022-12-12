package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.model.Order;

import java.sql.SQLException;

public interface IOrder {


    public void addOrder(Order o) throws SQLException, ClassNotFoundException;



}
