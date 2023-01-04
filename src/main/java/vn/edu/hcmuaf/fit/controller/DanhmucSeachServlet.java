package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "DanhmucSeachServlet", value = "/DanhmucSeachServlet")
public class DanhmucSeachServlet extends HttpServlet {
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
                    System.out.println(txt);
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
