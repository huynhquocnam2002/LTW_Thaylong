package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.Product_OrderImpl;

import java.io.IOException;

@WebServlet(name = "PayServlet", value = "/PayServlet")
public class PayServlet extends HttpServlet {



    private Product_OrderImpl poDao = new Product_OrderImpl();



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


         request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");


        String delivery_address = request.getParameter("");
        String user = request.getParameter("id");



    }
}
