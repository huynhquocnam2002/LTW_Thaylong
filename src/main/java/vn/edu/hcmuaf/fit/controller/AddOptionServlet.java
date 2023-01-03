package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.OptionDAO;
import vn.edu.hcmuaf.fit.model.Option;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AddOptionServlet", value = "/AddOptionServlet")
@MultipartConfig
public class AddOptionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("addoption.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id= Util.getRandomId();
        while (true) {
            try {
                if (!OptionDAO.isContainID(id)) break;
                id= Util.getRandomId();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
        String idProduct= request.getParameter("idProduct");
        String att = request.getParameter("attribute");
        long price = Long.parseLong(request.getParameter("unitPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Part filePart = request.getPart("img");
        String img = "image/option/"+id+".png";
        Util.uploadImage(filePart, "image\\option\\"+id+".png");
        int status = Integer.parseInt(request.getParameter("status"));
        Option option = new Option(id, att, price, quantity, img, status);
        try {
            OptionDAO.addOption(idProduct, option);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        response.sendRedirect("/AdminServlet");
    }
}
