package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.CategoryDAO;
import vn.edu.hcmuaf.fit.model.Category;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "InfoCategoryServlet", value = "/InfoCategoryServlet")
@MultipartConfig
public class InfoCategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("infocategory.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        int status = Integer.parseInt(request.getParameter("status"));
        Part filePart = request.getPart("img");
        String img = "image/category/"+id+".png";
        Util.uploadImage(filePart, "image\\category\\"+id+".png");
        Category category = new Category(id, name, img, status);
        try {
            CategoryDAO.changeInfo(category);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        response.sendRedirect("/AdminServlet");
    }
}
