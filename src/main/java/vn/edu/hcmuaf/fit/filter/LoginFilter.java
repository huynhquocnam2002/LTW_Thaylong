package vn.edu.hcmuaf.fit.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.DAO.UserDAO;
import vn.edu.hcmuaf.fit.model.User;

import java.io.IOException;
import java.sql.SQLException;

@WebFilter(filterName = "LoginFilter", urlPatterns = {"/UserServlet", "/AnnouncementServlet", "/ChangeInfoUserServlet", "/VerifyRegisterServlet", "/WelcomeAdminServlet", "/ChangePassServlet", "/AdminServlet", "/ModifyProductServlet", "/StopSellProductServlet", "/AddOptionServlet", "/InfoOptionServlet","/InfoCategoryServlet","/AddCategoryServlet","/AddProducerServlet","/InfoProducerServlet","/LockUserServlet","/UnlockUserServlet","/AddVoucherServlet","/InfoVoucherServlet","/ActiveVoucherServlet","/UnactiveVoucherServlet","/PayServlet"})
public class LoginFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        try {
            if (session == null || session.getAttribute("user") == null || UserDAO.getUserBySessionID((String) session.getAttribute("user")) == null) {
                res.sendRedirect("login.jsp"); // No logged-in user found, so redirect to login page.
            } else {
                res.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
                res.setHeader("Pragma", "no-cache"); // HTTP 1.0.
                res.setDateHeader("Expires", 0);
                chain.doFilter(request, response);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
