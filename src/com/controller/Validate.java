package com.controller;

import com.dao.CustomerDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Validate", urlPatterns = {"/Validate"})
public class Validate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean isIn = false;
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String username = request.getParameter("userinput");
        String method = request.getParameter("callback");
        CustomerDao customerDao = new CustomerDao();
        isIn = customerDao.queryisRegisted(username);

        StringBuilder callbackMethod = new StringBuilder();
        callbackMethod.append(method);
        callbackMethod.append("({");
        callbackMethod.append("user:\"" + username + "\",");
        callbackMethod.append("status:\"" + isIn + "\",");
        callbackMethod.append("})");
        out.write(callbackMethod.toString());
        out.flush();
        out.close();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
