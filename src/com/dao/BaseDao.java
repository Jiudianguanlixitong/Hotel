package com.dao;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.sql.DataSource;
import java.sql.Connection;

@WebServlet("/Context")
public class BaseDao extends HttpServlet {
    DataSource dataSource;

    BaseDao() {
        ServletContext context = getServletContext();
        dataSource = (DataSource) context.getAttribute("dataSource");
    }

    public Connection getConnection() throws Exception {
        return dataSource.getConnection();
    }
}
