package com.controller;

import com.dao.Room_infoDao;
import com.domain.Room_Info;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;

@WebServlet(name = "QueryRoom_Info", urlPatterns = {"/QueryRoom_Info"})
public class QueryRoom_Info extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Room_infoDao room_infoDao = new Room_infoDao();
        ArrayList<Room_Info> room_infos = new ArrayList<Room_Info>();
        HttpSession httpSession = request.getSession();
        String in_day = request.getParameter("in_day");
        String out_day = request.getParameter("out_day");
        httpSession.setAttribute("in_day", in_day);
        httpSession.setAttribute("out_day", out_day);
        String kind = request.getParameter("kind");
        java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");
        try {
            java.util.Date beginDate = format.parse(in_day);
            java.util.Date endDate = format.parse(out_day);
            long day = (endDate.getTime() - beginDate.getTime()) / (24 * 60 * 60 * 1000);
            System.out.println("in_day=" + in_day);
            System.out.println("out_day=" + out_day);
            System.out.println("kind=" + kind);
            System.out.println("相隔的天数=" + day);
            if ("all".equals(kind)) {
                room_infos = room_infoDao.queryRoom_Info_time(in_day, out_day);
            } else {
                System.out.println("kind=" + kind);
                room_infos = room_infoDao.queryAllRoom_Info(in_day,out_day,kind);
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        request.setAttribute("room_infos", room_infos);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/roomBook.jsp");
        requestDispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
