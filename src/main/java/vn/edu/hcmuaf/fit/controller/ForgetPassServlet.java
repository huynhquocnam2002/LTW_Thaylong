package vn.edu.hcmuaf.fit.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.DB.DataDB;
import vn.edu.hcmuaf.fit.model.User;

import java.io.IOException;
import java.sql.SQLException;


@WebServlet(name = "ForgetPassServlet", value = "/ForgetPassServlet")
public class ForgetPassServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = session.getAttribute("email")+"";
        session.setAttribute("email", email);
        String confirmCode = Util.createOTP();
        Util.sendEmail(email, confirmCode);
        session.setAttribute("confirmCode", confirmCode);
        session.setMaxInactiveInterval(60 * 2);
        request.getRequestDispatcher("forgetPassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        String confirmCode =(String) session.getAttribute("confirmCode");
        String email = request.getParameter("email");
        try {
            User user = DataDB.getUserByEmail(email);
            if (user == null) {
                request.setAttribute("error", "Email không đúng");
                request.getRequestDispatcher("forgetPassword.jsp").forward(request, response);
            } else if (confirmCode==null){
                session.setAttribute("email",email);
                doGet(request,response);
            } else {
                String code=request.getParameter("code");
                if (code.equals(confirmCode)){
                    session.removeAttribute("confirmCode");
                    session.setMaxInactiveInterval(60*60*24);
                    request.getRequestDispatcher("changepass.jsp").forward(request,response);
                } else{
                    request.setAttribute("error", "Sai mã xác nhận");
                    request.getRequestDispatcher("forgetPassword.jsp").forward(request,response);
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
