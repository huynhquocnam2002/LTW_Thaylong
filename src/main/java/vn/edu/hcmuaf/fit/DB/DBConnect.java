package vn.edu.hcmuaf.fit.DB;

import java.sql.*;

public class DBConnect {
    private static DBConnect instance;
    private static String DB_URL="jdbc:mysql://localhost:3306/project_web";
    private static String user="root";
    private static String pass="";
    private Connection connection;
    private DBConnect(){

    }

    public static DBConnect getInstance(){
        if (instance==null) instance=new DBConnect();
        return instance;
    }



    private void connect() throws SQLException, ClassNotFoundException {
        if (connection==null || connection.isClosed()){
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection= DriverManager.getConnection(DB_URL,user,pass);
        }
    }

    public PreparedStatement getPreparedStatement(String query) throws SQLException, ClassNotFoundException {
        if (connection==null) connect();
        return connection.prepareStatement(query);
    }

    public Statement get() throws SQLException, ClassNotFoundException {
        connect();
        return connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        DBConnect dbConnect= DBConnect.getInstance();
        Statement statement= dbConnect.get();
        ResultSet rs= statement.executeQuery("select * from product");
        while (rs.next()){
            String id=rs.getString(5);
            System.out.println(id);
        }

    }
}

