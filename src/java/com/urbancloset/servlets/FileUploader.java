
package com.urbancloset.servlets;

import java.io.File;
import java.io.IOException;
import java.util.Dictionary;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import java.util.Hashtable;

/**
 *
 * @author Student
 */
public class FileUploader {
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; 
    public static Dictionary<String, String[]> fileUpload(HttpServletRequest request,String uploadPath) throws IOException, FileUploadException, Exception
    {
        if(!ServletFileUpload.isMultipartContent(request)) {
            // if not, we stop here
            return null;
        }
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setFileSizeMax(MAX_FILE_SIZE);
        upload.setSizeMax(MAX_REQUEST_SIZE);
        File uploadDir = new File(uploadPath);
        @SuppressWarnings("unchecked")
        List<FileItem> formItems = upload.parseRequest(request);
        if (formItems != null && formItems.size() > 0) {
            Dictionary<String, String[]> d = new Hashtable<String, String[]>();
            String[] files = new String[3];

            // iterates over form's fields
            int i = 0;

            for (FileItem item : formItems) {
                // processes only fields that are not form fields
                
                if (!item.isFormField()) {
                    String fileName = new File(item.getName()).getName();
                    String filePath = uploadPath + File.separator + fileName;
                    File storeFile = new File(filePath);
                    files[i++] = fileName;
                    
                    // saves the file on disk
                    item.write(storeFile);
                    
                }
                else{
                    
                        
                            String name = item.getFieldName();
                            String value = item.getString();
                            System.out.println(name + " = " + value);
                            d.put(name, new String[]{value});
                }
                d.put("file-name", files);

                    
            }
            return d;
        }
        return null;

    }
    
    
   
        
    
}
