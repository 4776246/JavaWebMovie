package com.jarod.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
    private String DRIVER = "com.mysql.jdbc.Driver";
    private String URL    = "jdbc:mysql://127.0.0.1:3306/jx2280249147?characterEncoding=utf-8";
    private String USER   = "jx2280249147";
    private String PASS   = "jarod888";
    private Connection conn   = null;

    public DatabaseConnection() throws Exception{
        Class.forName(DRIVER);
        this.conn = DriverManager.getConnection(URL,USER,PASS);

    }

    public Connection getConn() {
        return conn;
    }

    public void close() throws Exception{
        conn.close();
    }
}
