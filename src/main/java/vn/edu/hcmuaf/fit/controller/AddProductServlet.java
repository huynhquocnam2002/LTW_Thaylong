package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.model.Cart;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.service.ProductService;

import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "AddProductServlet", value = "/AddProductServlet")
public class AddProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        Product p = ProductService.getInstance().get(id);

        p.setQuantity(1);

        Cart cart = (Cart) request.getSession().getAttribute("cart");

        if (cart == null) {

            cart = new Cart();


            {
                cart.put(p);

                request.getSession().setAttribute("cart", cart);

                response.sendRedirect("ShowProducts");
            }

        }
    }

            @Override
            protected void doPost (HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

            }
        }