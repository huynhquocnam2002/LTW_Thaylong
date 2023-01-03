package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.UserDAO;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ChangePassForgetServlet", value = "/ChangePassForgetServlet")
public class ChangePassForgetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pass = request.getParameter("newPass");
        String confirm = request.getParameter("confirmPass");
        String email = (String) request.getSession().getAttribute("email");
        if (pass.equals(confirm)) {
            try {
                UserDAO.changeUserPassword(email, pass);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        } else request.getRequestDispatcher("changpass.jsp").forward(request, response);
    }
}
