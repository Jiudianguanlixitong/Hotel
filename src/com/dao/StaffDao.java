package com.dao;

import com.domain.Staff;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class StaffDao extends BaseDao {
    public boolean addStaff(Staff staff) {
        String sql = "insert into  Staff values(?,?,?)";
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, staff.getUsername());
            preparedStatement.setString(2, staff.getPass());
            preparedStatement.setString(3, staff.getPosition());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteStaff(String username) {
        String sql = "delete from  Customer where username=?";
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean alterStaff(String new_pass, String new_position, String username) {
        String sql = "update Customer set pass=?,position=? where username=?";
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, new_pass);
            preparedStatement.setString(2, new_position);
            preparedStatement.setString(3, username);
            preparedStatement.executeQuery();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public ArrayList<Staff> queryAll() {
        String sql = "select username,position from Staff";
        ArrayList<Staff> res = new ArrayList<>();
        try (Connection connection = dataSource.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Staff resStaff = new Staff();
                resStaff.setUsername(resultSet.getString("username"));
                resStaff.setPosition(resultSet.getString("position"));
                res.add(resStaff);
            }
            return res;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }


    public Staff staffLogin(String username, String password) {
        String sql = "select * from Staff where username=?";
        Staff staff = new Staff();
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                if (resultSet.getString("pass").equals(password)) {
                    staff.setUsername(resultSet.getString("username"));
                    staff.setPosition(resultSet.getString("position"));
                    return staff;
                } else return null;
            } else return null;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}

