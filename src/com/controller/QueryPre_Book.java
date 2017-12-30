package com.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "QueryPre_Book", urlPatterns = {"/QueryPre_Book"})
public class QueryPre_Book extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //int room_id=Integer.parseInt(request.getParameter("id"));
        String kind = request.getParameter("kind");
        String price = request.getParameter("price");


    }
}
