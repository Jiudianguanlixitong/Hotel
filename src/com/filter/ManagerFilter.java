package com.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "ManagerFilter", urlPatterns = {"/manager.jsp"})
public class ManagerFilter implements Filter {
    private FilterConfig config;

    public void destroy() {
        config = null;
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        chain.doFilter(req, resp);
        HttpServletResponse httpServletResponse = (HttpServletResponse) resp;
        HttpServletRequest httpServletRequest = (HttpServletRequest) req;
        HttpSession session = httpServletRequest.getSession();

        if (session.getAttribute("username") == null) {
            httpServletResponse.sendRedirect("index.jsp");
//            requestDispatcher.forward(httpServletRequest,httpServletResponse);
        }

    }

    public void init(FilterConfig config) throws ServletException {
        this.config = config;
    }

}
