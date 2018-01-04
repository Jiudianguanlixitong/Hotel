package com.controller;

import com.dao.Room_infoDao;
import com.domain.Room_Info;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RoomInfoSet")
public class RoomInfoSet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String room_id = request.getParameter("room_id");
        String floors = request.getParameter("floors");
        String face = request.getParameter("face");
        String feature = request.getParameter("feature");
        String kind = request.getParameter("kind");
        Room_infoDao room_infoDao = new Room_infoDao();
        Room_Info room_info = new Room_Info(Integer.parseInt(room_id), Integer.parseInt(floors), face, feature, kind);
        Boolean b = room_infoDao.setRoom_Info(room_info);
        if (b) {
            response.sendRedirect("manager.jsp#BookStatus");
            System.out.println("success!");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
