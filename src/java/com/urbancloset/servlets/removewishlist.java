/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.urbancloset.servlets;

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

/**
 *
 * @author Jigar
 */
@WebServlet(name = "removewishlist", urlPatterns = {"/removewishlist"})
public class removewishlist extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                        PrintWriter out = response.getWriter();

        try 
        {
            Connection con = DbConnection.connect();
            String deletewishlistproduct = "DELETE FROM wishlist WHERE wishlistid = 1";
            PreparedStatement stmt = con.prepareStatement(deletewishlistproduct);
            int check = stmt.executeUpdate();
            
            JsonResponse jsonResponse = new JsonResponse();
                if(check == 1)
                {
                    jsonResponse.setStatus(true);
                    jsonResponse.setMessage("Product Removed From Wishlist");
                    
                }
                else
                {
                    jsonResponse.setStatus(false);
                    jsonResponse.setMessage("Error In Removing From Wishlist");
                }
            
            jsonResponse.getMessage();
            
        } catch (Exception e) {
            out.print(e);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        
    }

}
