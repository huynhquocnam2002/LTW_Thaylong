package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
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
        String pass = request.getParameter("newPass");
        String confirm = request.getParameter("confirmPass");
        if (pass.equals(confirm)) {
            String email = (String) request.getSession().getAttribute("email");
            if (email==null) email=((User) request.getSession().getAttribute("user")).getEmail();
            if (email != null)
                try {
                    DataDB.changeUserPassword(email, pass);
                    request.getSession().invalidate();
                    response.sendRedirect("login.jsp");
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
            else request.getRequestDispatcher("forgetPassword.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("changepass.jsp").forward(request, response);
        }
    }
}
