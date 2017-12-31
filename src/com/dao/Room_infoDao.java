package com.dao;

import com.domain.Room_Info;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Room_infoDao extends BaseDao {
    public boolean setRoom_Info(Room_Info room_info) {
        String sql = "insert into Room_Info values(?,?,?,?,?,?,?)";
        try (Connection connection = dataSource.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, String.valueOf(room_info.getRoom_id()));
            preparedStatement.setString(2, String.valueOf(room_info.getFloors()));
            preparedStatement.setString(3, room_info.getFace());
            preparedStatement.setString(4, room_info.getFeature());
            preparedStatement.setString(5, room_info.getKind());
            preparedStatement.setString(6, room_info.getTidy());
            preparedStatement.setString(7, room_info.getBook_status());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public ArrayList<Room_Info> queryAllRoom_Info(String in_day, String out_day, String kind) {
        String sql = "select room_id,floors,face,feature,Room_Info.kind,price from Room_Info,Room_Type\n" +
                "where room_id in\n" +
                "(\n" +
                "select room_id  from Room_Info except \n" +
                "(\n" +
                "select room_id from Pre_Book except \n" +
                "(\n" +
                "select room_id from Pre_Book where out_day<=? or in_day>=?\n" +
                ")\n" +
                ")\n" +
                ")and Room_Info.kind=Room_Type.kind and Room_Info.kind=?";
        ArrayList<Room_Info> room_infos = new ArrayList<Room_Info>();
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, in_day);
            preparedStatement.setString(2, out_day);
            preparedStatement.setString(3, kind);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Room_Info room_info = new Room_Info();
                room_info.setRoom_id(resultSet.getInt("room_id"));
                room_info.setFloors(resultSet.getInt("floors"));
                room_info.setFace(resultSet.getString("face"));
                room_info.setFeature(resultSet.getString("feature"));
                room_info.setKind(resultSet.getString("kind"));
                room_info.setPrice(resultSet.getInt("price"));
                room_infos.add(room_info);
            }
            return room_infos;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList<Room_Info> queryRoom_Info_time(String in_day, String out_day) {
        ArrayList<Room_Info> room_infos = new ArrayList<Room_Info>();
        String sql = "select room_id,floors,face,feature,Room_Info.kind,price from Room_Info,Room_Type\n" +
                "where room_id in\n" +
                "(\n" +
                "select room_id  from Room_Info except \n" +
                "(\n" +
                "select room_id from Pre_Book except \n" +
                "(\n" +
                "select room_id from Pre_Book where out_day<=? or in_day>=?\n" +
                ")\n" +
                ")\n" +
                ")and Room_Info.kind=Room_Type.kind";
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, in_day);
            preparedStatement.setString(2, out_day);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Room_Info room_info = new Room_Info();
                room_info.setRoom_id(resultSet.getInt("room_id"));
                room_info.setFloors(resultSet.getInt("floors"));
                room_info.setFace(resultSet.getString("face"));
                room_info.setFeature(resultSet.getString("feature"));
                room_info.setKind(resultSet.getString("kind"));
                room_info.setPrice(resultSet.getInt("price"));
                room_infos.add(room_info);
            }
            return room_infos;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
//确认订单后改变房间信息
    public boolean affirmPre_Book(String room_id,String in_day,String out_day,String book_status){
        String sql="update Room_Info set in_day=?,out_day=?,book_status=? where room_id=? and in_day='1753-01-01'";
        try (Connection connection = dataSource.getConnection()) {
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,in_day);
            preparedStatement.setString(2,out_day);
            preparedStatement.setString(3,book_status);
            preparedStatement.setString(4,room_id);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }
}
