package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.AnnouncementDAO;
import vn.edu.hcmuaf.fit.DAO.UserDAO;
import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.User;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AnnouncementServlet", value = "/AnnouncementServlet")
public class AnnouncementServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method=request.getParameter("method");
        String sessionID= (String) request.getSession().getAttribute("user");
        User user = null;
        try {
            user = UserDAO.getUserBySessionID(sessionID);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        String userId=user.getId();
        switch (method){
            case "deleteAll":
                try {
                    AnnouncementDAO.deleteAllAnnouncement(userId);
                    request.getRequestDispatcher("user.jsp").forward(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "readAll":
                try {
                    AnnouncementDAO.readAllAnnouncement(userId);
                    request.getRequestDispatcher("user.jsp").forward(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "read":
                String orderId=request.getParameter("orderId");
                String anmId=request.getParameter("anmId");
                try {
                    AnnouncementDAO.readAnnouncement(anmId);
                    request.setAttribute("orderId",orderId);
                    request.getRequestDispatcher("").forward(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
