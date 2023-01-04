package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.AnnouncementDAO;
import vn.edu.hcmuaf.fit.DAO.OrderDAO;
import vn.edu.hcmuaf.fit.model.Announcement;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "CancelOrderServlet", value = "/ChangeStatusOrderServlet")
public class ChangeStatusOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        int sst = Integer.parseInt(request.getParameter("status"));
        String status = "SO"+sst;
        try {
            OrderDAO.changeStatusOrder(id, status);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        String idAnn = Util.getRandomId();
        while (true) {
            try {
                if (!AnnouncementDAO.containID(id)) break;
                idAnn = Util.getRandomId();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
        String name = "Thông báo đơn hàng "+ id;
        String img="";
        try {
            img =OrderDAO.getImgOrder(id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        String content="";
        switch (sst){
            case 2:
                content = "Đơn hàng của bạn đã được xác nhận và đang được giao";
                break;
            case 3:
                content = "Đơn hàng của bạn đã được giao thành công";
                break;
            case 5:
                content = "Đơn hàng của bạn đã được hủy";
                break;
        }
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        String time = formatter.format(date);
        Announcement ann= new Announcement(idAnn, id, name, img, content, time, 0);
        try {
            AnnouncementDAO.addAnnouncement(ann);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        response.sendRedirect("/AdminServlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
