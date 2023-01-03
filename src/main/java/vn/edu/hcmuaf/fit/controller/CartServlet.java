package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.ProductDAO;
import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.Cart;
import vn.edu.hcmuaf.fit.model.Product;

import javax.mail.Session;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CartServlet", value = "/CartServlet")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        Cart cart = (Cart) session.getAttribute("cart");
        String msp = request.getParameter("idProduct");
        String command = request.getParameter("command");
        String cartID = request.getParameter("cartID");
        session.setAttribute("cartID" ,cartID);
        String url = "cart.jsp";

        try {

            switch (command) {
                case "insert":
                    if(cart == null) cart = new Cart();
                    cart.insertToCart(msp);
                    session.setAttribute("cart", cart);
                    url = "cart.jsp";
                    break;

                case "plus":
                    if(cart.getList().containsKey(msp)){
                        cart.insertToCart(msp);
                        session.setAttribute("cart", cart);
                    }
                    url = "cart.jsp";
                    break;
                case "minus":
                    if(cart == null) cart = new Cart();
                    cart.subTocart(msp);
                    session.setAttribute("cart", cart);
                    url = "cart.jsp";
                    break;
                case "delete":
                    if(cart == null) cart = new Cart();
                    cart.deleteCart(msp);
                    session.setAttribute("cart", cart);
                    url = "cart.jsp";
                    break;
                case "changenumber":
                    if(cart == null) cart = new Cart();
//                    cart.changenumber(msp, slnew);
                    session.setAttribute("cart", cart);
                    url = "cart.jsp";
                    break;
                default:

            }
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        } catch (Exception e) {

        }

    }
}
