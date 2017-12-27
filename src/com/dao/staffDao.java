package com.dao;

import javax.naming.*;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServlet;
import javax.sql.DataSource;

public class staffDao {
    DataSource dataSource;

    Context context = new InitialContext();

    public staffDao() throws NamingException {
        try {
            dataSource = (DataSource) context.lookup("java:comp/env/jdbc/SQLServer");
            if (dataSource != null) {
                System.out.println("Success");
            } else {
                System.out.println("Fail");
            }
        } catch (NamingException e) {
            e.printStackTrace();
        }
    }


    public static void main(String[] args) throws NamingException {
        staffDao test = new staffDao();
    }
}
