package controllers;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.annotation.*;
import java.io.*;
import java.util.List;
import models.User;

@WebServlet("/upload.do")
public class UploadServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

          System.out.println(request.getParameter("email"));

          User us = new User();
          
        if(ServletFileUpload.isMultipartContent(request)) {
            ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());

            List<FileItem> uploads = null;
            try {
                uploads = sfu.parseRequest(request);
            } catch(FileUploadException e) {
                e.printStackTrace();
            }

            FileItem fileItem = uploads.get(0);

            String whereToSave = getServletContext().getRealPath("/users/"+request.getParameter("uemail"));

            File uploadFolder = new File(whereToSave);

            uploadFolder.mkdir();
            
            System.out.println(whereToSave);

            String fileName = fileItem.getName();

            File file = new File(whereToSave, fileName);

            us.setEmail(request.getParameter("uemail"));
            us.setDp(fileName);

            try {
                fileItem.write(file);
            } catch(Exception e) {
                e.printStackTrace();
            }

            us.saveImage();
        }
    }
}