package controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

import models.User;

import com.google.gson.Gson;

@WebServlet("/save.do")
public class SaveServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // String name = request.getParameter("uname");
        // String email = request.getParameter("uemail");
        // String password = request.getParameter("upassw");
        String userData = request.getParameter("user_data");

        Gson gson = new Gson();
        User user = gson.fromJson(userData, User.class);
        String result = "no";
        // if(new User(name, email, password).saveUser()) {
        //     result = "yes";
        // }

        if(user.saveExtraDetails()) {
            result = "yes";
        }

        response.getWriter().write(result);
    }
}