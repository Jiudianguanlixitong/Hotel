package com.dao;

import com.domain.Room_Type;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Room_typeDao extends BaseDao {
    public boolean setRoom_Type(Room_Type room_type){
        String sql="insert into Room_Type values(?,?,?)";
        try (Connection connection = dataSource.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, room_type.getKind());
            preparedStatement.setString(2, String.valueOf(room_type.getPrice()));
            preparedStatement.setString(3,String.valueOf(room_type.getFree()));
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
