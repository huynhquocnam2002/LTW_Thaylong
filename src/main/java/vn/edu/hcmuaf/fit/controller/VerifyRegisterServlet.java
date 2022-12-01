package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.User;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Random;

@WebServlet(name = "VerifyRegisterServlet", value = "/VerifyRegisterServlet")
public class VerifyRegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().setMaxInactiveInterval(60);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
                request.getRequestDispatcher("verify.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("verify.jsp").forward(request, response);
        }
    }


}
