package com.dao;

import javax.sql.DataSource;
import java.sql.Connection;

public class Base {
    DataSource dataSource;

    public Base(DataSource dataSource){
        this.dataSource=dataSource;
    }

    public Connection getConnection() throws Exception{
        return dataSource.getConnection();
    }
}

