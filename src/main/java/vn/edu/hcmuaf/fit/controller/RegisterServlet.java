package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.User;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Random;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            User user= (User) request.getSession().getAttribute("user");
            String email= user.getEmail();
            sendVerifyCode(request, response, email);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
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
                    request.setAttribute("error","Email bạn nhập đã được sử dụng");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                } else {
                    while (!DataDB.register(Util.getRandomId(), email, pass)) ;
                    HttpSession session = request.getSession();
                    session.setAttribute("user", (User) DataDB.getUserByEmail(email));
                    doGet(request, response);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }

    }

    private void sendVerifyCode(HttpServletRequest request, HttpServletResponse response, String email) throws SQLException, ClassNotFoundException, ServletException, IOException {
        HttpSession session = request.getSession();
        String confirmCode = Util.createOTP();
        Util.sendEmail(email, confirmCode);
        session.setAttribute("confirmCode", confirmCode);
        request.getRequestDispatcher("verify.jsp").forward(request, response);
    }



}
