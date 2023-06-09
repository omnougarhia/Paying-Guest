package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import models.User;

@WebServlet("/userregister.do")
public class UserRegister extends HttpServlet{
    
            public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{

                request.getRequestDispatcher("userregister.jsp").forward(request, response);
                
            } 

            public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{

                HttpSession session = request.getSession();
                
                System.out.println(request.getParameter("user_"));
                Integer userType = Integer.parseInt(request.getParameter("user_"));
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String password = request.getParameter("password");

                User us = new User();

                us.setUserType(userType);
                us.setName(name);
                us.setEmail(email);
                us.setPhone(phone);
                us.setPassword(password);

                if(us.saveUser()) {

                      response.sendRedirect("userlogin.jsp");
                      
                } else {

                      session.setAttribute("exists", "user already exits with this email");
                      response.sendRedirect("userregister.jsp");
                    
                }

                
            }
    
}
