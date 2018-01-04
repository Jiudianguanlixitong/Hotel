package com.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "CustomerFilter", urlPatterns = {"/book-rooms-detail.jsp"})
public class CustomerFilter implements Filter {
    private FilterConfig config;

    public void destroy() {
        config = null;
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        chain.doFilter(req, resp);
        HttpServletRequest httpServletRequest = (HttpServletRequest) req;
        HttpServletResponse httpServletResponse = (HttpServletResponse) resp;
        HttpSession session = httpServletRequest.getSession();
        if (session.getAttribute("username") == null &&
                session.getAttribute("identification") == null) {
            httpServletResponse.sendRedirect("register.jsp");
        }
    }

    public void init(FilterConfig config) throws ServletException {
        this.config = config;
    }

}
