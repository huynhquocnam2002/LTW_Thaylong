package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.User;

import java.io.IOException;

@WebServlet(name = "ChangeInfoUserServlet", value = "/ChangeInfoUserServlet")
public class ChangeInfoUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id= ((User) request.getSession().getAttribute("user")).getId();
        String name=request.getParameter("name");

//        boolean change= DataDB.changeInfoUser(id, )
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
