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
        String id = ((User) request.getSession().getAttribute("user")).getId();
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        String bday=request.getParameter("birthDay").equals("")?"null":"'"+Util.reverseDate(request.getParameter("birthDay"))+"'";

        Part filePart = request.getPart("avatar"); // Retrieves <input type="file" name="file">
        String img = "image/user/user_" + id + ".png";
        if (!filePart.getSubmittedFileName().equals("")) {
            InputStream fileContent = filePart.getInputStream();
            File file = new File("D:\\Code_Web\\Project_Web\\src\\main\\webapp\\image\\user\\user_" + id + ".png");
            FileOutputStream out = new FileOutputStream(file);
            File file2 = new File("D:\\Code_Web\\Project_Web\\target\\image\\user\\user_" + id + ".png");
            FileOutputStream out2 = new FileOutputStream(file2);
            int i = fileContent.read();
            while (i != -1) {
                out.write(i);
                out2.write(i);
                i = fileContent.read();
            }
            out.close();
            out2.close();
        }


        try {
            boolean change = UserDAO.changeInfoUser(id, name, email, phone, gender, bday, img);
            request.getSession().setAttribute("user", UserDAO.getUserById(id));
            request.getRequestDispatcher("user.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
