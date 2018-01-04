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

@WebServlet(name = "QueryAllBookServlet",urlPatterns = {"/QueryAllBook"})
public class QueryAllBookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Console.jsp");
        requestDispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<Pre_Book> res = new ArrayList<>();
        Pre_bookDao pre_bookDao = new Pre_bookDao();
        res=pre_bookDao.queryAllBook();

        request.setAttribute("allBook",res);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Console.jsp");
        requestDispatcher.forward(request,response);
    }
}
