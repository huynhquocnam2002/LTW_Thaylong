package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.mail.Session;
import java.io.IOException;

@WebServlet(name = "DanhmucServlet", value = "/DanhmucServlet")
public class DanhmucServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
                    session.removeAttribute("txt");

                try {
                    String txt = request.getParameter("input_seach");
                    session.setAttribute("txt" , txt);


                    System.out.println("vooo");
                    System.out.println(txt);
                    request.getRequestDispatcher("SeachTxt.jsp").forward(request, response);
                    System.out.println("done !");
                } catch (Exception e){
                        e.printStackTrace();
                }
    }
}
