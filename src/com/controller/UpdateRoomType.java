package com.controller;

import com.dao.Room_typeDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateRoomType", urlPatterns = {"/UpdataRoomType"})
public class UpdateRoomType extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String price = request.getParameter("price");
        int setprice = Integer.parseInt(price);

        String free = request.getParameter("free");
        int setfree = Integer.parseInt(free);

        String setkind = request.getParameter("kind");
        Room_typeDao room_typeDao = new Room_typeDao();
        room_typeDao.updateRoom(setkind, setprice, setfree);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Console.jsp");
        requestDispatcher.forward(request, response);
        System.out.println("Success");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
