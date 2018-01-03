package com.dao;

import com.domain.Pre_Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Pre_bookDao extends BaseDao {
    public boolean addPre_Book(Pre_Book pre_book) {
        String sql = "insert into Pre_Book values(?,?,?,?,?,?,?)";
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, String.valueOf(pre_book.getId()));
            preparedStatement.setString(2, String.valueOf(pre_book.getRoom_id()));
            preparedStatement.setString(3, pre_book.getIn_day());
            preparedStatement.setString(4, pre_book.getOut_day());
            preparedStatement.setString(5, pre_book.getKind());
            preparedStatement.setString(6, pre_book.getRequest());
            preparedStatement.setString(7, String.valueOf(pre_book.getPrice()));
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public ArrayList<Pre_Book> queryPre_Book(String identification) {
        String sql = "select * from Pre_Book where id=?";
        ArrayList<Pre_Book> pre_books = new ArrayList<Pre_Book>();
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, identification);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Pre_Book pre_book = new Pre_Book();
                pre_book.setId(resultSet.getInt("id"));
                pre_book.setIn_day(resultSet.getString("in_day"));
                pre_book.setOut_day(resultSet.getString("out_day"));
                pre_book.setRoom_id(resultSet.getInt("room_id"));
                pre_book.setKind(resultSet.getString("kind"));
                pre_book.setRequest(resultSet.getString("request"));
                pre_book.setPrice(resultSet.getInt("price"));
                pre_books.add(pre_book);
            }
            return pre_books;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Boolean deletePre_Book(int id) {
        String sql = "delete from Pre_Book where id=?";
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, String.valueOf(id));
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
