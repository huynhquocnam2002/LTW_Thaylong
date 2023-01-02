package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.model.Order;

import java.sql.SQLException;

public interface IOrder {


    public Category addOrder(Order o) throws SQLException, ClassNotFoundException;



}
