package com.controller;

import com.dao.CustomerDao;
import com.domain.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //用户注册模块
        String new_username=request.getParameter("new_username");
        String new_password=request.getParameter("new_password");
        String new_id=request.getParameter("new_id");
        String new_name=request.getParameter("new_name");
        String new_gender=request.getParameter("newgender");
        com.domain.Customer customer=new com.domain.Customer();
        customer.setUsername(new_username);
        customer.setPass(new_password);
        customer.setId(Integer.parseInt(new_id));
        customer.setName(new_name);
        customer.setGender(new_gender);
        CustomerDao customerDao1=new CustomerDao();
        if(customerDao1.addCustomer(customer)){
            response.sendRedirect("login.html");
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       /* String username="C001",pass="C001";
        CustomerDao customerDao=new CustomerDao();
        Boolean b=customerDao.testCustomer(username,pass);
        if(b){
            System.out.println("success!");
        }else System.out.println("false!");
     */
    }
}
