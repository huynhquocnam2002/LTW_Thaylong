package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.controller.Util;
import vn.edu.hcmuaf.fit.model.User;

import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    public static User getUserByEmail(String userName) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("select * from user where email=?");
        sta.setString(1, userName);
        ResultSet rs = sta.executeQuery();
        User res = null;
        if (rs.next())
            res = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getDate(10), rs.getInt(9), rs.getInt(11));
        return res;
    }

    public static User getUserById(String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        User res = null;
        PreparedStatement sta = db.getStatement("select * from user where id=?");
        sta.setString(1, id);
        ResultSet rs = sta.executeQuery();
        if (rs.next())
            res = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getDate(10), rs.getInt(9), rs.getInt(11));
        return res;
    }

    public static boolean register(String id, String email, String pass) throws SQLException, ClassNotFoundException, IOException {
        DataDB db = new DataDB();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();
        File file = new File("D:\\Code_Web\\Project_Web\\src\\main\\webapp\\image\\user\\user_" + id + ".png");
        FileOutputStream out = new FileOutputStream(file);
        File file2 = new File("D:\\Code_Web\\Project_Web\\target\\Project_Web-1.0-SNAPSHOT\\image\\user\\user_" + id + ".png");
        FileOutputStream out2 = new FileOutputStream(file2);
        InputStream fileContent = new FileInputStream("D:\\Code_Web\\Project_Web\\src\\main\\webapp\\image\\user\\none.png");
        int i = fileContent.read();
        while (i != -1) {
            out.write(i);
            out2.write(i);
            i = fileContent.read();
        }
        out.close();
        out2.close();
        PreparedStatement sta = db.getStatement("insert into user values (?,?,?,null,?,?,?,null,0,?);");
        sta.setString(1, id);
        sta.setString(2, "image/user/user_" + id + ".png");
        sta.setString(3, "user " + id);
        sta.setString(4, email);
        sta.setString(5, pass);
        sta.setString(6, "ukn");
        sta.setString(7, dtf.format(now));
        return sta.execute();
    }

    public static boolean activeUser(User u) throws SQLException, ClassNotFoundException {
        changeStatus(u.getId(), 1);
        return true;
    }

    public static void lock(String id) throws SQLException, ClassNotFoundException {
        changeStatus(id, -1);
    }

    public static void unlock(String id) throws SQLException, ClassNotFoundException {
        changeStatus(id, 1);
    }

    public static void changeStatus(String id, int status) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("update user set status=? where id=?");
        sta.setInt(1, status);
        sta.setString(2, id);
        sta.executeUpdate();
    }

    public static boolean changeInfoUser(String userId, String name, String email, String phone, String gender, String bday, String img) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("update user set name=?, email=?, phone_number=?, gender=?, birthday=?,img=? where id=?;");
        sta.setString(1, name);
        sta.setString(2, email);
        sta.setString(3, phone);
        sta.setString(4, gender);
        sta.setString(5, bday);
        sta.setString(6, img);
        sta.setString(7, userId);
        return sta.execute();
    }

    public static boolean changeUserPassword(String email, String pass) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("update user set password=? where email=?");
        sta.setString(1, pass);
        sta.setString(2, email);
        return sta.execute();
    }

    public static User getUserBySessionID(String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("select * from user where session_id=?");
        sta.setString(1, id);
        ResultSet rs = sta.executeQuery();
        User res = null;
        if (rs.next())
            res = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getDate(10), rs.getInt(9), rs.getInt(11));
        return res;
    }

    public static String updateSessionID(String id) throws SQLException, ClassNotFoundException {
        User user=getUserById(id);
        if (user==null) return "";
        String ssID = Util.createSessionID();
        User userSS;
        DataDB db= new DataDB();
        while (true) {
            userSS = getUserBySessionID(ssID);
            if (userSS == null) {
                PreparedStatement sta= db.getStatement("update user set session_id=? where id=?");
                sta.setString(1,ssID);
                sta.setString(2, id);
                sta.execute();
                break;
            }
            ssID = Util.createSessionID();
        }
        return ssID;
    }

    public static List<User> getAllUser() throws SQLException, ClassNotFoundException {
        List<User> res= new ArrayList<User>();
        DataDB db= new DataDB();
        PreparedStatement sta= db.getStatement("select * from user");
        ResultSet rs= sta.executeQuery();
        while (rs.next())
            res.add(new User(rs.getString(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getDate(10), rs.getInt(9),rs.getInt(11)));
        return res;
    }

    public static int getNumUserByStatus(int status) throws SQLException, ClassNotFoundException {
        DataDB db= new DataDB();
        PreparedStatement sta= db.getStatement("select count(id) from user where status=?");
        sta.setInt(1, status);
        ResultSet rs= sta.executeQuery();
        rs.next();
        return rs.getInt(1);
    }

    public static List<User> getListUserByStatus(List<User> list, int status){
        List<User> res = new ArrayList<User>();
        for (User u: list){
            if (u.getStatus()==status) res.add(u);
        }
        return res;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        System.out.println(getNumUserByStatus(-1));
    }
}
