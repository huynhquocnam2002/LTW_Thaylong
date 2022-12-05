package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.User;

import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class UserDAO {
    public static User getUserByEmail(String userName) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta = db.getStatement("select * from admin where email=?");
        sta.setString(1, userName);
        ResultSet rs = sta.executeQuery();
        if (!rs.next()) {
            rs.close();
            sta = db.getStatement("select * from user where email=?");
            sta.setString(1, userName);
            rs = sta.executeQuery();
            if (!rs.next()) return null;
            User res = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getDate(10), rs.getInt(9));
            return res;
        } else {
            User res = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getDate(10), rs.getInt(9), 1);
            return res;
        }
    }

    public static User getUserById(String id) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        User res =null;
        PreparedStatement sta = db.getStatement("select * from user where id=?");
        sta.setString(1, id);
        ResultSet rs = sta.executeQuery();
        if (!rs.next()) return null;
            res = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getDate(10), rs.getInt(9));
        return res;
    }

    public static boolean register(String id, String email, String pass) throws SQLException, ClassNotFoundException, IOException {
        DataDB db = new DataDB();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();
        File file = new File("D:\\Code_Web\\Project_Web\\src\\main\\webapp\\image\\user\\user_" + id + ".png");
        FileOutputStream out = new FileOutputStream(file);
        File file2 = new File("D:\\Code_Web\\Project_Web\\target\\image\\user\\user_" + id + ".png");
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
        DataDB db = new DataDB();
        PreparedStatement sta=db.getStatement("update user set status=1 where id=?");
        sta.setString(1,u.getId());
        return sta.execute();
    }

    public static boolean changeInfoUser(String userId, String name, String email, String phone, String gender, String bday, String img) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta= db.getStatement("update user set name=?, email=?, phone_number=?, gender=?, birthday=" + bday + ",img='" + img + "' where id='" + userId + "';");
        sta.setString(1,name);
        sta.setString(2,email);
        sta.setString(3,phone);
        sta.setString(4,gender);
        return sta.execute();
    }

    public static boolean changeUserPassword(String email, String pass) throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        PreparedStatement sta=db.getStatement("update user set password=? where email=?");
        sta.setString(1,pass);
        sta.setString(2,email);
        return sta.execute();
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        System.out.println(getUserById("U1").getImg());
    }
}
