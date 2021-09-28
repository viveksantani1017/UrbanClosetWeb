/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.urbancloset.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import com.google.gson.Gson;
import com.urbancloset.models.*;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "signup", urlPatterns = {"/signup"})

public class signup extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        
        
        JsonResponse jsonResponse = new JsonResponse();
        
        try 
        {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phno = request.getParameter("phno");
            String pass = request.getParameter("pass");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/urbancloset","root","");
            String sql = "Insert into userdetails (UserName , UserEmail , UserPhNo , UserPassword ) VALUES ('"+name+"' , '"+email+"' , "+phno+" , '"+pass+"' )";
            Statement smt = connection.createStatement();
            
            int count = smt.executeUpdate(sql);
                        
            if(count>0)
            {
                jsonResponse.setStatus(true);
                jsonResponse.setMessage("User Registerd");
            }
            else
            {
                jsonResponse.setStatus(false);
                jsonResponse.setMessage("NOT REGISTERED");
            }
           
            
            
            
            
        } catch (Exception e) 
        {
            jsonResponse.setStatus(false);
            jsonResponse.setMessage("Error: " + e.getMessage());
        }
        
            PrintWriter out = response.getWriter();
            out.println(new Gson().toJson(jsonResponse));
    }

    

}
