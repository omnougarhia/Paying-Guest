package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import models.User;
import javax.servlet.http.HttpSession;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

@WebServlet("/userlogin.do") 
public class UserLoginServlet extends HttpServlet {

       public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

          request.getRequestDispatcher("userlogin.jsp").forward(request, response);
        
       }
    

       public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{

          //Session

          HttpSession session = request.getSession();

          // Get Parameter
        
           String email = request.getParameter("email");

           String password = request.getParameter("password");

           Pattern p1 = Pattern.compile("[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}");

           Matcher m1 = p1.matcher(email); 

           if(!m1.matches()) {

                 request.setAttribute("invalid_email","invalid email id");
                 request.getRequestDispatcher("userlogin.jsp").forward(request,response);
           }

           User us = new User();

           us.setEmail(email);
           us.setPassword(password);
  
          if(us.doLogin()) {

              session.setAttribute("user",us);
                
              request.getRequestDispatcher("userprofile.jsp").forward(request, response);
            
          }  else {

                request.setAttribute("invalid","incorrect email or password");
               
                request.getRequestDispatcher("userlogin.jsp").forward(request, response);


            
          }


           

        
       }
       
}