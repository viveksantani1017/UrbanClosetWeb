/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.urbancloset.servlets;

import java.io.*;
import java.util.Dictionary;
import javax.servlet.http.*;



/**
 *
 * @author Student
 */
public class UploadServlet extends HttpServlet {

    private static String uploadPath;
    private static final long serialVersionUID = 1L;
    
    // upload settings
   
    public void init()
    {
//        this.uploadPath = getServletContext().getRealPath("/") + "images";
        uploadPath = "D:\\Files\\NetBeans\\FileUpload\\web\\images";

    }
    
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    {
        try
        {
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            Dictionary<String, String[]> d = FileUploader.fileUpload(request, uploadPath);
            System.out.print(d.toString());
            out.println(d.get("title")[0]);
            String[] files = d.get("file-name");
            
            for(String f : files)
            {
                out.println(f);
            }
             
            
        }
        catch(Exception ex)
        {
            System.out.println(ex);
        }
    }

}
