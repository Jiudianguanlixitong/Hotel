package com.controller;

import com.domain.Customer;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Register", urlPatterns = {"/Register.do"})
public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext context = getServletContext();
//        DataSource dataSource = (DataSource) context.getAttribute("dataSource");

        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username").trim();
        String password = request.getParameter("password").trim();
        //CustomerDao customerDao = new CustomerDao((DataSource) context.getAttribute("dataSource"));
        Customer customer = new Customer();
        customer.setName(username);
        customer.setPass(password);
        //customerDao.addCustomer(customer);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
