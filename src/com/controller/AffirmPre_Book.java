package com.controller;

import com.dao.Pre_bookDao;
import com.domain.Pre_Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AffirmPre_Book", urlPatterns = {"/AffirmPre_Book"})
public class AffirmPre_Book extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession httpSession = request.getSession();
        Integer id = (Integer) httpSession.getAttribute("identification");
        String in_day = (String) httpSession.getAttribute("in_day");
        String out_day = (String) httpSession.getAttribute("out_day");
        String kind = request.getParameter("kind");
        int room_id=Integer.parseInt(request.getParameter("room_id"));
        int price = Integer.parseInt(request.getParameter("price").substring(1));
        String addition = request.getParameter("addition");
        System.out.println("id=" + id +"room_id"+room_id+"in_day=" + in_day + "out_day=" + out_day + "kind=" + kind + "price=" + price + "re=" + addition);
        Pre_Book pre_book = new Pre_Book(id,room_id,in_day, out_day, kind, addition, price);
        Pre_bookDao pre_bookDao = new Pre_bookDao();
        if (pre_bookDao.addPre_Book(pre_book)) {
            System.out.println("success!");
            //请求转发至成功页面
        } else System.out.println("false!");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
