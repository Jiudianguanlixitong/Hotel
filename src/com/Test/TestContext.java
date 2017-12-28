package com.Test;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet("/TestConnect")
public class TestContext extends HttpServlet {


    public TestContext() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext context = getServletContext();
        DataSource dataSource = (DataSource) context.getAttribute("dataSource");
        Connection conn;
        {
            try {
                conn = dataSource.getConnection();
                if (conn != null) {
                    System.out.println("Success");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
