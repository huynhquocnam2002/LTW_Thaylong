package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.model.Cart;
import vn.edu.hcmuaf.fit.model.Product;


import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "ShowProducts", value = "/controller/ShowProducts")
public class ShowProducts extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        Cart cart = (Cart) request.getSession().getAttribute("cart");

        if (cart == null) {

            response.getWriter().println("Giỏ hàng trống");

        } else {

//            Collection<Product> list = cart.getListProduct();


//            for (Product p : list) {
//
//                response.getWriter().println(p);
//            }
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
