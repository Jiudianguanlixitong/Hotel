package com.dao;

import com.domain.Bill;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BillDao extends BaseDao {
    public Boolean addBill(Bill bill) {
        String sql = "insert into Bill values(?,?,?,?,?,?,?)";
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, String.valueOf(bill.getId()));
            preparedStatement.setString(2, bill.getIn_day());
            preparedStatement.setString(3, bill.getOut_day());
            preparedStatement.setString(4, String.valueOf(bill.getRoom_id()));
            preparedStatement.setString(5, bill.getKind());
            preparedStatement.setString(6, bill.getRequest());
            preparedStatement.setString(7, String.valueOf(bill.getPrice()));
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
