
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;


import beans.*;
import database.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ayush
 */

public class AdminLoginServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        try {
            UseDB db = new UseDB();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AdminLoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        super.init(); //To change body of generated methods, choose Tools | Templates.
    }

    
    
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String message1 = "";
        String message2 = "";
        String destination = "";
        String color = "red";
        HttpSession session = request.getSession();
        
        String uname = request.getParameter("uname");
        String password = request.getParameter("password");
        
        Admin admin = UseDB.getAdmin(uname,password);
        if( admin!=null )
        {

            message1 = "Successfull Login " + admin.getFirstName() + " " + admin.getLastName();
            message2 = "Redirecting to ADMIN Home Page...";
            color = "green";
            session.setAttribute("admin",admin);
            destination = "AdminHomeBooks";
 
        }
        else
        {
            message1 = "Login Failed Username OR Password Invalid ";
            message2 = "Redirecting to ADMIN Login Page...";
            color = "red";
            destination = "admin_login.jsp";
        }
        
        RequestDispatcher rd=request.getRequestDispatcher(destination);  
            //servlet2 is the url-pattern of the second servlet  
  
        //rd.forward(request, response); 
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AdminLogin</title>");            
            out.println("</head>");
            out.println("<body>");
            if( "red".equals(color) )
            {
                out.println("<br><h1 style=\"color:red;\" >" + message1 + "</h1><br>");
                out.println("<h1 style=\"color:red;\" >" + message2 + "</h1>");
                out.println("<img src=\"img/invalid-admin.jpg\" height=\"200\" width=\"200\" >");
            }
            else
            {
                out.println("<br><h1 style=\"color:green;\"> " + message1 + "</h1><br>");
                out.println("<h1 style=\"color:green;\"> " + message2 + "</h1>");
                out.println("<img src=\"img/verified.jpeg\" height=\"200\" width=\"200\" >");
            }
            out.println("</body>");
            out.println("</html>");
            
        response.setHeader("Refresh", "5; URL="+destination);
    }



}
