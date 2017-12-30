package com.controller;

import com.dao.CustomerDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CustomerLogin", urlPatterns = {"/CustomerLogin"})
public class CustomerLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //用户登录模块
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String curURI = request.getParameter("curUrl");
        CustomerDao customerDao = new CustomerDao();
        if (customerDao.testCustomer(username, password)) {
            int identification = customerDao.queryIndentification(username);
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("identification", identification);
            httpSession.setAttribute("username", username);
            response.sendRedirect(curURI);
        } else response.sendRedirect("error.html");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
