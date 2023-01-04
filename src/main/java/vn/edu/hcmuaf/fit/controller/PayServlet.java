package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.OrderDAOImpl;
import vn.edu.hcmuaf.fit.DAO.Product_OrderImpl;
import vn.edu.hcmuaf.fit.model.Cart;
import vn.edu.hcmuaf.fit.model.Order;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.model.Products_Order;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;

@WebServlet(name = "PayServlet", value = "/PayServlet")
public class PayServlet extends HttpServlet {


    private OrderDAOImpl hdDAO = new OrderDAOImpl();
    private Product_OrderImpl cthdDao = new Product_OrderImpl();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");


        String taiKhoan = request.getParameter("tai_khoan");
        String dia_chi_giao_hang = request.getParameter("dia_chi_giao_hang");
        String trang_thai_don_hang = request.getParameter("trang_thai_don_hang");

        long amount = Long.parseLong(request.getParameter("amount"));

        String note = request.getParameter("note");


        HttpSession session = request.getSession();

        Cart cart = (Cart) session.getAttribute("cart");


        try {

            Date date = new Date();

            String mdh = "" + date.getTime();

            Order order = new Order(mdh, taiKhoan, trang_thai_don_hang, dia_chi_giao_hang, amount, note, new Timestamp(new Date().getTime()));


            order.setId(mdh);

            hdDAO.addOrder(order);

            TreeMap<String, Integer> list = cart.getList();

            for (Map.Entry<String, Integer> ds : list.entrySet()) {

                Product product = new Product();

                product.setID_product(ds.getKey());

                cthdDao.addProduct_Order(new Products_Order());


            }

            response.sendRedirect("index.jsp");


        } catch (Exception e) {


            e.printStackTrace();

        }

    }
}
