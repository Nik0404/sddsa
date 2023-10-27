package com.DB;

import java.sql.*;

public class DbConn {

    private static Connection connection = null;

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        if (connection == null) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost/music-house_app?useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            
            System.out.println("connected");
        }
        return connection;
    }
}
