package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.User;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Random;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        String code = (String) session.getAttribute("confirmCode");
        if (code != null) {
            String clientCode = request.getParameter("confirmCode");
            if (clientCode.equals(code)) {
                try {
                    if (session.getAttribute("user") != null) {
                        DataDB.activeUser((User) session.getAttribute("user"));
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
            } else {
                System.out.println(-1);
                request.getRequestDispatcher("confirmRegister.jsp").forward(request, response);
            }
        } else {
            System.out.println(1);
            request.getRequestDispatcher("confirmRegister.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("username");
        String pass = request.getParameter("pass");
        String confirm = request.getParameter("confirm");
        String id = "US" + Util.getRandomId();
        if (!pass.equals(confirm)) {
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            try {
                if (DataDB.getUserByEmail(email) != null) {
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                } else {
                    while (!DataDB.register(Util.getRandomId(), email, pass)) ;
                    HttpSession session = request.getSession();
                    session.setAttribute("user", (User) DataDB.getUserByEmail(email));
                    session.setMaxInactiveInterval(60 * 10);
                    Random rd = new Random();
                    String confirmCode = rd.nextInt(10000) + "";
                    Util.sendEmail(email, confirmCode);
                    session.setAttribute("confirmCode", confirmCode);
                    request.getRequestDispatcher("confirmRegister.jsp").forward(request, response);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }

    }

    private boolean sendEmail(String to, String code) {
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


}
