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
import com.urbancloset.servlets.DbConnection;
import java.util.Dictionary;
import org.json.JSONObject;
import org.json.JSONArray;

/**
 *
 * @author Jigar
 */
@WebServlet(name = "addcategory", urlPatterns = {"/addcategory"})
public class addcategory extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
//        PrintWriter out = response.getWriter();
//        
//        try 
//        {
//            Connection con = DbConnection.connect();
//            String selectcategory = "Select * from category";
//            Statement stmt = con.createStatement();
//            ResultSet rs = stmt.executeQuery(selectcategory);
//            JSONArray json = new JSONArray();
//            ResultSetMetaData rsmd = rs.getMetaData();
//            while(rs.next())
//            {
//                out.println(rs.getString("CategoryName"));
//                out.println(rs.getString("CategoryDescription"));
//            }
//        } catch (Exception e) 
//        {
//            out.println(e);
//        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        try
        {
            response.setContentType("text/html");
            Connection con = DbConnection.connect();
            
            String CategoryName = request.getParameter("categoryName");
            String CategoryDescription = request.getParameter("categoryDescription");

            String sql = "INSERT INTO categorydetails (CategoryName,CategoryDescription) VALUES(?,?)";

            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, CategoryName);
            stmt.setString(2, CategoryDescription);
            
            int j = stmt.executeUpdate();
            

        } catch (Exception e) {
        }

    }

}
