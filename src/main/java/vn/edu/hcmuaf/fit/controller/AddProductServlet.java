package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.ProductDAO;
import vn.edu.hcmuaf.fit.model.Product;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.Date;

@WebServlet(name = "AddProductServlet", value = "/AddProductServlet")
@MultipartConfig
public class AddProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=Util.getRandomId();
        String name = request.getParameter("name");
        long price = Long.parseLong(request.getParameter("unitPrice"));
        int insurance= Integer.parseInt(request.getParameter("insurance"));
        String category = request.getParameter("category");
        String producer = request.getParameter("producer");
        int status= Integer.parseInt(request.getParameter("status"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Part filePart = request.getPart("img");
        String img = "image/imageProduct/"+id+".png";
        Util.uploadImage(filePart, "image\\imageProduct\\"+id+".png");
        String details = request.getParameter("details");
        Product product= new Product(id,name,price,img,insurance,category,"",producer,status,new Date(),quantity,details);
        try {
            ProductDAO.addProduct(product);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        response.sendRedirect("/AdminServlet");
    }
}
