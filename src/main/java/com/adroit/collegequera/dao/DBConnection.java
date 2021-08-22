package com.adroit.collegequera.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection 
{
    public static Connection getConnection() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String pass = "";
        Connection cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegequera","root",pass);
        return cnn;
    }
}
