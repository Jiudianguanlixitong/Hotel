package com.dao;

import com.domain.Pre_Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
            preparedStatement.setString(2,String.valueOf(pre_book.getRoom_id()));
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

}
