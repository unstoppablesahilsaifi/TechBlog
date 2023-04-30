/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techblog.helper;

import java.sql.*;

public class ConnectionProvider {

    private static Connection con;

    //If anyone will call this getConnection function it will return con connection.
    public static Connection getConnection() {
        try {
            if (con == null) {
                //Load the Driver
                Class.forName("com.mysql.jdbc.Driver");
                //Create the connection
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog", "root", "root");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
