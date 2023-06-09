package controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

import models.User;

@WebServlet("/show_pic.do")
public class ShowPicServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        User user = (User)session.getAttribute("user");
        System.out.println(user.getDp());
        if(user!=null) {
            InputStream is = getServletContext().getResourceAsStream("/users/"+user.getEmail()+"/"+user.getDp());

            OutputStream os = response.getOutputStream(); 

            byte[] arr = new byte[1024];
            int count = 0;

            while((count=is.read(arr)) != -1) {
                os.write(arr);
            }

            os.flush();
            os.close();
        }
    }
}
