package com.controller;

import com.dao.StaffDao;
import com.domain.Staff;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/StaffLogin")
public class StaffLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        StaffDao staffDao = new StaffDao();
        Staff staff = new Staff();
        staff = staffDao.staffLogin("username", "password");
        request.setAttribute("staff", staff);
        //跳转到登录界面
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("manager.jsp");
        requestDispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
