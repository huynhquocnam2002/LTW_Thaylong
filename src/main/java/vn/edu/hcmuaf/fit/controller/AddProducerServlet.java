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

@WebServlet(name = "AddProducerServlet", value = "/AddProducerServlet")
@MultipartConfig
public class AddProducerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = Util.getRandomId();
        while (true){
            try {
                if (!ProducerDAO.containID(id)) break;
                id = Util.getRandomId();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
        String name = request.getParameter("name");
        int status = Integer.parseInt(request.getParameter("status"));
        Part filePart = request.getPart("img");
        String img = "image/producer/"+id+".png";
        Util.uploadImage(filePart, "image\\producer\\"+id+".png");
        Producer producer = new Producer(id, name, img, status);
        try {
            ProducerDAO.addProducer(producer);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        response.sendRedirect("/AdminServlet");
    }
}
