package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.VoucherDAO;
import vn.edu.hcmuaf.fit.model.Voucher;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "AddVoucherServlet", value = "/AddVoucherServlet")
public class AddVoucherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = Util.getRandomId();
        while (true) {
            try {
                if (!VoucherDAO.containID(id)) break;
                id=Util.getRandomId();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        long discount = Long.parseLong(request.getParameter("discount"));
        long minPrice = Long.parseLong(request.getParameter("minPrice"));
        Date startDate = null, endDate=null;
        try {
            startDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("startDate"));
            endDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("endDate"));
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        int status = Integer.parseInt(request.getParameter("status"));
        String description = request.getParameter("description");
        Voucher voucher = new Voucher(id, type, name, discount, minPrice, startDate, endDate, status, description);
        try {
            VoucherDAO.addVoucher(voucher);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        response.sendRedirect("/AdminServlet");
    }
}
