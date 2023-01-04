package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.*;
import vn.edu.hcmuaf.fit.model.*;
import vn.edu.hcmuaf.fit.model.Product;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;

@WebServlet(name = "PayServlet", value = "/PayServlet")
public class PayServlet extends HttpServlet {


    private OrderDAOImpl hdDAO = new OrderDAOImpl();
    private Product_OrderImpl cthdDao = new Product_OrderImpl();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("pay.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name= request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String idUser= request.getParameter("iduser");
        String idAddress = Util.getRandomId();
        while (true) {
            try {
                if (!AddressDAO.containId(idAddress)) break;
                idAddress = Util.getRandomId();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
        Address a = new Address(idAddress, idUser, name, phone, address);
        try {
            AddressDAO.add(a);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        String idOrder = Util.getRandomId();
        while (true) {
            try {
                if (!OrderDAO.containId(idOrder)) break;
                idOrder = Util.getRandomId();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
        long amount = Long.parseLong(request.getParameter("amount"));
        String note = request.getParameter("note");
        Date d = new Date();
        Order order = new Order(idOrder, idUser, "SO1", idAddress, amount, note, d);
        try {
            OrderDAO.add(order);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        int numProduct = Integer.parseInt(request.getParameter("numProduct"));
        for (int i=0; i< numProduct;i++){
            String idProduct = request.getParameter("idProduct"+i);
            int quantity = Integer.parseInt(request.getParameter("quantity"+i));
            long amountP = Long.parseLong(request.getParameter("amount"+i));
            try {
                ProductOrderDao.add(idOrder, idProduct, quantity, amountP, "OPTION1");
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
        String idVoucher = request.getParameter("discount");
        System.out.println(idVoucher);
        if (!idVoucher.equals("0")) {
            try {
                VoucherDAO.remove(idUser, idVoucher);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
        HttpSession session = request.getSession();
        Cart cart= (Cart) session.getAttribute("cart");
        cart.clearCart();
        request.setAttribute("name", name);
        request.setAttribute("phone", phone);
        request.setAttribute("address", address);
        request.setAttribute("amount", amount);
        request.setAttribute("idorder", idOrder);
        request.setAttribute("order", order);
        request.getRequestDispatcher("done.jsp").forward(request, response);
    }
}
