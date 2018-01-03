package com.dao;

import com.domain.Room_Type;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Room_typeDao extends BaseDao {
    public boolean setRoom_Type(String kind,String price,String free) {
        String sql = "insert into Room_Type values(?,?,?)";
        try (Connection connection = dataSource.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, kind);
            preparedStatement.setString(2, price);
            preparedStatement.setString(3, free);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
