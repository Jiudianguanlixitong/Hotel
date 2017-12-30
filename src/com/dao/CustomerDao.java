package com.dao;

import com.domain.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerDao extends BaseDao {
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
        }
        return false;
    }

    //用户验证登录
    public boolean testCustomer(String username, String password) {
        String sql = "select pass from Customer where username=?";
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            //System.out.println(resultSet.getString("pass"));
            if (resultSet.next()) {
                if (resultSet.getString("pass").equals(password)) return true;
                else return false;
            } else return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    //用户登录后通过用户名得到身份证
    public int queryIndentification(String username) {
        int id = 0;
        String sql = "select id from Customer where username=?";
        try (Connection connection = dataSource.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                id = resultSet.getInt("id");
            }
            return id;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;
    }

    //用户登录会通过身份证得到用户名
    public String queryUsername(int id) {
        String username = "";
        String sql = "select username from Customer where id=?";
        try (Connection connection = dataSource.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            username = resultSet.getString("username");
            return username;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return username;
    }
    //用户登录后通过用户名得到身份证
    public int queryIndentification(String username){
        int id=0;
        String sql="select id from Customer where username=?";
        try (Connection connection = dataSource.getConnection()) {
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,username);
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
               id=resultSet.getInt("id");
            }
            return id;
        } catch (SQLException e) {
            e.printStackTrace();
            return id;
        }

    }
}
