package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DAO.ReviewDAO;
import vn.edu.hcmuaf.fit.DAO.UserDAO;
import vn.edu.hcmuaf.fit.model.Review;
import vn.edu.hcmuaf.fit.model.User;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

@WebServlet(name = "commentServerlet", value = "/commentServerlet")
public class commentServerlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String idsp = request.getParameter("idpro");
        String comment = request.getParameter("name");
        String date =  request.getParameter("datename");

        String iduser = request.getParameter("iduser");

        String id = "US" + Util.getRandomId();
        String link = request.getParameter("linkrequet");

        System.out.println(id+" " + idsp+ " "+ comment + " "+iduser + " "+ date );
        try {
            if(ReviewDAO.checkIDreview(id)) {
                id = "US" + Util.getRandomId();
            }else {
                ReviewDAO.addreview(id,idsp,iduser,comment,date);
                request.getRequestDispatcher(link).forward(request, response);
                System.out.println("save done !");
                System.out.println(link);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
