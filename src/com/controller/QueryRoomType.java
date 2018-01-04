package com.controller;

import com.dao.Room_typeDao;
import com.domain.Room_Type;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "QueryRoomType", urlPatterns = {"/QueryRoomType"})
public class QueryRoomType extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Room_Type> retRoom = new ArrayList<>();
        Room_typeDao queryRoom = new Room_typeDao();
        retRoom = queryRoom.queryRoomType();
        request.setAttribute("allRoomType", retRoom);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Console.jsp");
        requestDispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
