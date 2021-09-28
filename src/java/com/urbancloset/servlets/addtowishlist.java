/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.urbancloset.servlets;

import com.google.gson.Gson;
import com.urbancloset.models.JsonResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Jigar
 */
@WebServlet(name = "addtowishlist", urlPatterns = {"/addtowishlist"})
public class addtowishlist extends HttpServlet 
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        PrintWriter out = response.getWriter();
        try
        {
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            HttpSession session = request.getSession();
            Object data = session.getAttribute("UserID");
            int userId = -1;
    
            if (data != null)
            userId = Integer.parseInt(data.toString());
            
            String pid = request.getParameter("id");
            out.println(pid);
            response.setContentType("text/html");
            Connection con = DbConnection.connect();
            String addwishlist = "Insert into wishlist(UserId,ProductId) values(?,?)";
                    
            PreparedStatement stmt = con.prepareStatement(addwishlist);
            stmt.setInt(1,userId);
            stmt.setInt(2,Integer.parseInt(pid));
            
            int i = stmt.executeUpdate();
            out.println(i); 
                    JsonResponse jsonResponse = new JsonResponse();

        if(i==1)
        {
            jsonResponse.setStatus(true);
            jsonResponse.setMessage("Added to wishlist");
        }
        else
        {
            jsonResponse.setStatus(false);
            jsonResponse.setMessage("removed to wishlist");
        }
        

        out.println(new Gson().toJson(jsonResponse));
        }
        catch (Exception e)
        {
            out.println(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
