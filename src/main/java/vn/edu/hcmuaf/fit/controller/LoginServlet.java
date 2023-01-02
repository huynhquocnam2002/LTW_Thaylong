package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.UserDAO;
import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.User;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        String sessionID = session.getAttribute("user") +"";
        System.out.println(sessionID);
        if (sessionID.equals("null")) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            try {
                if (UserDAO.getUserBySessionID(sessionID)!=null) {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            User user = UserDAO.getUserByEmail(request.getParameter("name"));
            if (user == null) {
                request.setAttribute("error", "Email hoặc mật khẩu không chính xác");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                if (user.isPassword(request.getParameter("pass"))) {
                    String ssID=UserDAO.updateSessionID(user.getId());
                    session.setAttribute("user", ssID);
                    if (user.getRole() == 0)
                        request.getRequestDispatcher("index.jsp").forward(request,response);
                    else if (user.getRole()==1) response.sendRedirect("/AdminServlet");
                } else {
                    request.setAttribute("error", "Email hoặc mật khẩu không chính xác");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}