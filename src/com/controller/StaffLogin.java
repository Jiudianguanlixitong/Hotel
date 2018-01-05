package com.controller;

import com.dao.StaffDao;
import com.domain.Staff;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "StaffLogin", urlPatterns = {"/StaffLogin"})
public class StaffLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        StaffDao staffDao = new StaffDao();
        Staff staff = new Staff();
        staff = staffDao.staffLogin(username, password);
        session.setAttribute("username", username);
        String position = staff.getPosition();
        //跳转到登录界面
        if (position.equals("经理")) {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("Console.jsp");
            requestDispatcher.forward(request, response);
        } else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("Consolelite.jsp");
            requestDispatcher.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
