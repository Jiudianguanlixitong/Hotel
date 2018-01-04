package com.dao;

import com.domain.Room_Type;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Room_typeDao extends BaseDao {
    public boolean setRoom_Type(String kind, String price, String free) {
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

    public ArrayList<Room_Type> queryRoomType() {
        String sql = "select * from Room_Type";
        ArrayList<Room_Type> res = new ArrayList<>();
        try (Connection connection = dataSource.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Room_Type resRoomType = new Room_Type();
                resRoomType.setKind(resultSet.getString("kind"));
                resRoomType.setPrice(resultSet.getInt("price"));
                resRoomType.setFree(resultSet.getInt("free"));
                res.add(resRoomType);
            }
            return res;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    public boolean updateRoom(String kind, int price, int free) {
        String sql = "update Room_Type set price=?,free=? where kind=?";
        boolean status = false;
        try (Connection connection = dataSource.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, price);
            preparedStatement.setInt(2, free);
            preparedStatement.setString(3, kind);
            int resultSet = preparedStatement.executeUpdate();
            status = true;
            return status;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }
}
