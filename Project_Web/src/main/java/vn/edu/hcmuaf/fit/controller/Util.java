package vn.edu.hcmuaf.fit.controller;

import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;

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

    public static void main(String[] args) {
        sendEmail("henrynguyen43679@gmail.com", "4444");
    }
}
