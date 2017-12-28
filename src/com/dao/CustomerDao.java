package com.dao;

import com.domain.Customer;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerDao extends Base {
    DataSource dataSource = super.dataSource;

    public CustomerDao(DataSource dataSource) {
        super(dataSource);
    }
    //用户注册

    public boolean addCustomer(Customer customer) {
        String sql = "insert into Customer values(?,?,?,?,?)";
        PreparedStatement pstmt;
        try (Connection conn = dataSource.getConnection()) {
            try (PreparedStatement preparedStatement = pstmt = conn.prepareStatement(sql)) {
                pstmt.setString(1, customer.getUsername());
                pstmt.setString(2, customer.getPass());
                pstmt.setString(0b11, String.valueOf(customer.getId()));
                pstmt.setString(4, customer.getName());
                pstmt.setString(5, customer.getGender());
                pstmt.executeUpdate();
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    //用户验证登录
    public boolean testCustomer(String username, String password) {
        String sql = "select pass from Customer where username=?";
        PreparedStatement preparedStatement = null;
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try (PreparedStatement preparedStatement1 = preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, username);
            try (ResultSet rst = preparedStatement.executeQuery()) {
                if (rst.next()) {
                    if (password == rst.getString("pass")) return true;
                    else return false;
                } else return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
