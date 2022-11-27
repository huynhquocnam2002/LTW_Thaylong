package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DB.DataDB;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "LoadProductController", value = "/LoadProduct")
public class LoadProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            DataDB dataDB= new DataDB();
            request.setAttribute("setProduct",dataDB.getProducts());
            request.getRequestDispatcher("admin.jsp").forward(request,response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
