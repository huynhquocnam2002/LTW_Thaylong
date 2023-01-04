package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.CategoryDAO;
import vn.edu.hcmuaf.fit.DAO.ProducerDAO;
import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.model.Producer;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "InfoProducerServlet", value = "/InfoProducerServlet")
@MultipartConfig
public class InfoProducerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("infoproducer.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        int status = Integer.parseInt(request.getParameter("status"));
        Part filePart = request.getPart("img");
        String img = "image/producer/"+id+".png";
        Util.uploadImage(filePart, "image\\producer\\"+id+".png");
        Producer producer= new Producer(id, name, img, status);
        try {
            ProducerDAO.changeInfo(producer);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        response.sendRedirect("/AdminServlet");
    }
}
