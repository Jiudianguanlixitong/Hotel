package com.controller;

import com.dao.CustomerDao;
import com.dao.StaffDao;
import com.domain.Customer;
import com.domain.Staff;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "QueryAllUser", urlPatterns = {"/QueryAllUser"})
public class QueryAllUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String queryKind = request.getParameter("type");
        ArrayList<Customer> retCus = new ArrayList<>();
        ArrayList<Staff> retStaff = new ArrayList<>();
        CustomerDao queryCus = new CustomerDao();
        StaffDao queryStaff = new StaffDao();
        if ("cus".equals(queryKind)) {
            retCus = queryCus.queryAll();
            request.setAttribute("CusAll", retCus);
        } else {
            retStaff = queryStaff.queryAll();
            request.setAttribute("StaffAll", retStaff);
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Console.jsp");
        requestDispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String queryKind = request.getParameter("type");
        ArrayList<Customer> retCus = new ArrayList<>();
        ArrayList<Staff> retStaff = new ArrayList<>();
        CustomerDao queryCus = new CustomerDao();
        StaffDao queryStaff = new StaffDao();
        if ("cus".equals(queryKind)) {
            retCus = queryCus.queryAll();
            request.setAttribute("CusAll", retCus);
        } else {
            retStaff = queryStaff.queryAll();
            request.setAttribute("StaffAll", retStaff);
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Console.jsp");
        requestDispatcher.forward(request, response);
    }
}
