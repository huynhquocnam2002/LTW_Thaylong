package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.DB.DBConnect;
import vn.edu.hcmuaf.fit.model.Producer;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ProducerDao {


    // get data from MySQL



    public static Producer getProducers() throws SQLException, ClassNotFoundException {

        try {


            DBConnect dbConnect = DBConnect.getInstance();
            Statement statement = dbConnect.get();
            ResultSet rs = statement.executeQuery("SELECT * FROM producer WHERE producer.ID=\"PRER10\"");
            while (rs.next()) {

                Producer p = new Producer(
                                rs.getString(1),
                                rs.getString(2),
                                rs.getString(3),
                                rs.getInt(4));


                return p;

            }

        } catch (Exception e) {


        }
        return null;
    }


    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        ProducerDao dao =new ProducerDao();

        Producer p = dao.getProducers();

        System.out.println(p);


    }
}


