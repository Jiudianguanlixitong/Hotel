package com.controller;

import com.dao.Room_typeDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RoomTypeSet", urlPatterns = {"/RoomTypeSet"})
public class RoomTypeSet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String kind = request.getParameter("kind");
        String price = request.getParameter("price");
        String free = request.getParameter("free");
        Room_typeDao room_typeDao = new Room_typeDao();
        Boolean b = room_typeDao.setRoom_Type(kind, price, free);
        if (b) {
            //跳转到房间信息设置页面,并将kind带入进去
            request.setAttribute("kind", kind);
            request.setAttribute("num", free);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/manager.jsp");
            requestDispatcher.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
