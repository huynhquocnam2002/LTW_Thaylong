package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.http.Part;
import vn.edu.hcmuaf.fit.model.Order;

import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDateTime;
import java.util.*;

public class Util {
    public static String getRandomId() {
        String id = "";
        char[] arr = new char[62];
        for (int i = 0; i < 62; i++) {
            if (i < 26) {
                arr[i] = (char) ('a' + i);
            } else if (i < 52) {
                arr[i] = (char) ('A' + i - 26);
            } else {
                arr[i] = (char) ('0' + i - 52);
            }
        }
        Random rd = new Random();
        for (int i = 0; i < 8; i++) {
            id += arr[rd.nextInt(62)];
        }
        return id;
    }

    public static List<Order> getOrdersByStatus(List<Order> list, String status) {
        List<Order> res = new ArrayList<Order>();
        for (Order o : list) {
            if (o.getStatus().equals(status)) res.add(o);
        }
        return res;
    }

//    public static boolean containStatus(List<Order> list, String status) {
//        for (Order o : list) {
//            if (o.getStatus().equals(status)) return true;
//        }
//        return false;
//    }

    static boolean sendEmail(String to, String code) {
        String from = "20130426@st.hcmuaf.edu.vn";

        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "465");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.socketFactory.port", "465");
        prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

        Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, "0359681217");
            }
        });
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(to));
            message.setSubject("Verify account JC Shop");
            message.setText("Verify code:" + code);
            Transport.send(message);
            return true;
        } catch (MessagingException e) {
            return false;
        }
    }

    public static int minusDate(Date d1, Date d2) {
        Calendar c1 = Calendar.getInstance();
        Calendar c2 = Calendar.getInstance();
        c1.setTime(d1);
        c2.setTime(d2);
        return (int) ((c1.getTime().getTime() - c2.getTime().getTime()) / (1000 * 60 * 60 * 24));
    }

    public static int minusDateToHours(Date d1, Date d2) {
        Calendar c1 = Calendar.getInstance();
        Calendar c2 = Calendar.getInstance();
        c1.setTime(d1);
        c2.setTime(d2);
        return (int) ((c1.getTime().getTime() - c2.getTime().getTime()) / (1000 * 60 * 60));
    }

    public static String reverseDate(String str) {
        String[] arr = str.split("-/");
        String res = "";
        for (int i = arr.length - 1; i >= 0; i--)
            res += arr[i] + "-";
        return res.substring(0, res.length() - 1);
    }

    public static String createOTP() {
        Random rd = new Random();
        String confirmCode = rd.nextInt(1000000) + "";
        return confirmCode;
    }

    public static String createSessionID() {
        Random rd = new Random();
        char[] arr = new char[26];
        for (int i = 0; i < 26; i++) {
            arr[i] = (char) ('a' + i);
        }
        String id = "";
        for (int i = 0; i < 15; i++)
            id += arr[rd.nextInt(26)];
        return id;
    }

    public static void main(String[] args) {
        Date now = new Date();
        String time = now.getYear()+"-"+now.getMonth()+"-"+now.getDate()+" "+now.getHours()+":"+now.getMinutes()+":"+now.getSeconds();
        System.out.println(time);
    }

    public static void uploadImage(Part filePart, String imgLink) throws IOException {
        if (!filePart.getSubmittedFileName().equals("")) {
            InputStream fileContent = filePart.getInputStream();
            File file = new File("D:\\Code_Web\\Project_Web\\src\\main\\webapp\\"+imgLink);
            FileOutputStream out = new FileOutputStream(file);
            File file2 = new File("D:\\Code_Web\\Project_Web\\target\\Project_Web-1.0-SNAPSHOT\\"+imgLink);
            FileOutputStream out2 = new FileOutputStream(file2);
            int i = fileContent.read();
            while (i != -1) {
                out.write(i);
                out2.write(i);
                i = fileContent.read();
            }
            out.close();
            out2.close();
        }
    }
}
