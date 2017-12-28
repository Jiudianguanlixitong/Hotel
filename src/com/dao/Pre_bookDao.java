package com.dao;

import com.domain.Pre_Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Pre_bookDao extends BaseDao {
    public boolean addPre_Book(Pre_Book pre_book) {
        String sql = "insert into Pre_Book values(?,?,?,?,?,?)";
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.executeQuery();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
