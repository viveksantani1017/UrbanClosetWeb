/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.urbancloset.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author Student
 */
@WebServlet(name = "DbConnection", urlPatterns = {"/DbConnection"})
public class DbConnection extends HttpServlet {
private static String Driver = "com.mysql.cj.jdbc.Driver";
    private static String dsn = "jdbc:mysql://localhost/urbancloset";
    private static String user = "root";
    private static String password = "";
    private static Connection connection;
    public static Connection connect() throws ServletException, IOException
    {
        try {

            
            Class.forName(Driver);
            connection = DriverManager.getConnection(dsn,user,password);
            return connection;
            
        } catch (Exception e) {
            
        }
        return null;

    }


}
