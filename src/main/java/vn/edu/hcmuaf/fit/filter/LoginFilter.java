package vn.edu.hcmuaf.fit.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.model.User;

import java.io.IOException;

@WebFilter(filterName = "LoginFilter", urlPatterns = "/")
public class LoginFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req= (HttpServletRequest) request;
        HttpSession session=req.getSession();
        User user= (User) session.getAttribute("user");
        if (user==null) request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}
