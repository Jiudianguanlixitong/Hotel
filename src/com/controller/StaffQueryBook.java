package com.controller;

import com.dao.Pre_bookDao;
import com.domain.Pre_Book;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "StaffQueryBook", urlPatterns = {"/StaffQueryBook"})
public class StaffQueryBook extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String identification = request.getParameter("identification");
        Pre_bookDao pre_bookDao = new Pre_bookDao();
        ArrayList<Pre_Book> pre_books = new ArrayList<Pre_Book>();
        pre_books = pre_bookDao.queryPre_Book(identification);
        request.setAttribute("pre_books", pre_books);
        //显示订单
        String curUrl = request.getParameter("curUrl");
        if(curUrl!=null) {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher(curUrl);
            requestDispatcher.forward(request, response);
        }else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Concole.jsp");
            requestDispatcher.forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
