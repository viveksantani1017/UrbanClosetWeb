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
 * @author Lenovo
 */
@WebServlet(name = "addproduct", urlPatterns = {"/addproduct"})
public class addproduct extends HttpServlet {

    
    private static String uploadPath;
    private static final long serialVersionUID = 1L;
    
    // upload settings
   
    public void init()
    {
//        this.uploadPath = getServletContext().getRealPath("/") + "images";
        uploadPath = "D:/Files/UrbanCloset/web/images";

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                       PrintWriter out = response.getWriter();

        try 
        {
            Connection con = DbConnection.connect();
            String selectproduct = "Select * from product_details";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(selectproduct);
            JSONArray json = new JSONArray();
    ResultSetMetaData rsmd = rs.getMetaData();
    while(rs.next())
    {
        out.println(rs.getString("ProductName"));
    }
        }catch(Exception e)
        {
            out.print(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out = response.getWriter();

               try {

            response.setContentType("text/html");
            Connection con = DbConnection.connect();
            
            Dictionary<String, String[]> d = FileUploader.fileUpload(request, uploadPath);
            String[] files = d.get("file-name");

            String[] ProductName = d.get("ProductName");
            String[] ProductDes = d.get("ProductDescription");
            String[] ProductPrice = d.get("ProductPrice");
            String[] ProductSize = d.get("ProductSize");
            String[] ProductColour = d.get("ProductColour");
            String[] ProductQuantity = d.get("ProductQuantity");
            
           
            
            String sql = "INSERT INTO product_details (ProductName,ProductDescription,ProductPrice,ProductSize,ProductColour,ProductQuantity) VALUES(?,?,?,?,?,?)";
                    
            PreparedStatement stmt = con.prepareStatement(sql);
                    stmt.setString(1,ProductName[0]);
                    stmt.setString(2,ProductDes[0]);
                    stmt.setInt(3,Integer.parseInt(ProductPrice[0]));
                    stmt.setString(4,ProductSize[0]);
                    stmt.setString(5,ProductColour[0]);
                    stmt.setInt(6,Integer.parseInt(ProductQuantity[0]));
            int j = stmt.executeUpdate();
            
            String Pdetails = "Select * from product_details";
            Statement p = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
    ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = p.executeQuery(Pdetails);
            int lastid=0;
            if(rs.last())
            {
                lastid = rs.getInt("id");
            }
            
            
            
        } catch (Exception e) {
            out.print(e.getMessage());
        }
            
    }
            

}
