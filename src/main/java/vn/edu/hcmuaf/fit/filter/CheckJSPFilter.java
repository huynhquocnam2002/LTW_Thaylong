package vn.edu.hcmuaf.fit.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(filterName = "CheckJSPFilter", urlPatterns = "*.jsp")
public class CheckJSPFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        System.out.println(req.getRequestURI());
        String uri = req.getRequestURI();
        if (uri.equals("/") || uri.equals("/index.jsp") || uri.equals("/register.jsp") || uri.equals("/login.jsp") || uri.equals("/danhmuc_seach.jsp") || uri.equals("/forgetPassword.jsp")) chain.doFilter(request, response);
        else
            request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
