package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.UserDAO;
import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "ChangePassServlet", value = "/ChangePassServlet")
public class ChangePassServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String crpass = request.getParameter("passcr");
        String pass = request.getParameter("newPass");
        String confirm = request.getParameter("confirmPass");
        User user = null;
        try {
            user = UserDAO.getUserBySessionID((String) request.getSession().getAttribute("user"));
        } catch (SQLException e) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } catch (ClassNotFoundException e) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        if (pass.equals(confirm) && user.isPassword(crpass)) {
            String email = user.getEmail();
            try {
                UserDAO.changeUserPassword(email, pass);
                request.getRequestDispatcher("user.jsp").forward(request, response);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        } else {
            request.getRequestDispatcher("user.jsp").forward(request, response);
        }
    }
}
