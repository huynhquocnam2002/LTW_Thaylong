package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.UserDAO;
import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.User;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.SQLException;

@WebServlet(name = "ChangeInfoUserServlet", value = "/ChangeInfoUserServlet")
@MultipartConfig
public class ChangeInfoUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sessionID= (String) request.getSession().getAttribute("user");
        String id = null;
        try {
            id = UserDAO.getUserBySessionID(sessionID).getId();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        String name = request.getParameter("name");
        System.out.println(name);
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        String bday=request.getParameter("birthDay").equals("")?"null":Util.reverseDate(request.getParameter("birthDay"))+"";

        Part filePart = request.getPart("avatar");
        String img = "image/user/user_" + id + ".png";
        Util.uploadImage(filePart, "image\\user\\user_" + id + ".png");
        try {
            boolean change = UserDAO.changeInfoUser(id, name, email, phone, gender, bday, img);
            request.getRequestDispatcher("user.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
