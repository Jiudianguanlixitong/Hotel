package com.controller;

import com.dao.BillDao;
import com.domain.Bill;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/StaffAffirmBook")
public class StaffAffirmBook extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("identification");
        String in_day=request.getParameter("in_day");
        String out_day=request.getParameter("out_day");
        String room_id=request.getParameter("room_id");
        String kind=request.getParameter("kind");
        String addition=request.getParameter("addition");
        String sum_price=request.getParameter("sum_price");
        Bill bill=new Bill(Integer.parseInt(id),in_day,out_day,Integer.parseInt(room_id),kind,addition,Integer.parseInt(sum_price));
        BillDao billDao=new BillDao();
        Boolean b=billDao.addBill(bill);
        if(b){
            System.out.println("success!");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
