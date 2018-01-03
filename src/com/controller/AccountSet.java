package com.controller;

import com.dao.StaffDao;
import com.domain.Staff;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AccountSet")
public class AccountSet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //前台账号添加
        String username=request.getParameter("username");
        String passwod=request.getParameter("password");
        String position=request.getParameter("position");
        Staff staff=new Staff(username,passwod,position);
        StaffDao staffDao=new StaffDao();
        boolean b=staffDao.addStaff(staff);
        if(b){
            System.out.println("success!");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //前台帐号删除
        String username=request.getParameter("username");
        StaffDao staffDao=new StaffDao();
        Boolean b=staffDao.deleteStaff("username");
        if(b){
            System.out.println("success!");
        }
    }
}
