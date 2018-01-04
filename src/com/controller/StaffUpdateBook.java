package com.controller;

import com.dao.Pre_bookDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "StaffUpdateBook", urlPatterns = {"/StaffUpdateBook"})
public class StaffUpdateBook extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("identification");
        Pre_bookDao pre_bookDao = new Pre_bookDao();
        Boolean b = pre_bookDao.deletePre_Book(Integer.parseInt(id));
        if (b) {
            response.sendRedirect("Console.jsp#BookStatus");
            System.out.println("success!");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
