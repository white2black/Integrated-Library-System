
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
public class UserLoginServlet extends HttpServlet {

    String destination = "";
    String message1 = "";
    String message2 = "";
    String color = "red";

    @Override
    public void init() throws ServletException {
        try {
            UseDB db = new UseDB();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(UserLoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        super.init(); //To change body of generated methods, choose Tools | Templates.
    }
   
    
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String uname = request.getParameter("uname");
        String password = request.getParameter("password");
        
        HttpSession session = request.getSession();
        
        User user = UseDB.getUser(uname,password);
        
        if( user!=null ) 
        {
            session.setAttribute("user", user);
            message1 = "Login Successfull " + user.getFirstName() + " " + user.getLastName();
            message2 = "Redirecting To User Home Page...";
            destination = "UserHomeBooks";
            color = "green";
        }
        else
        {
            message1 = "Login Failed Invalid Username OR Password  ";
            message2 = "Redirecting to Login-User Page...";
            destination = "user_login.jsp";
            color = "red";
        }    
        
        //System.out.println("userloginservlet Before");
        
        //System.out.println("userloginservlet Middle");
        RequestDispatcher rd=request.getRequestDispatcher(destination);  
        //System.out.println("userloginservlet After");
        
        //rd.forward(request, response);//method may be include or forward  
        
        response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserLogin</title>");            
            out.println("</head>");
            out.println("<body>");
            
            if( "red".equals(color) )
            {
                out.println("<br><h1 style=\"color:red;\" >" + message1 + "</h1><br>");
                out.println("<h1 style=\"color:red;\" >" + message2 + "</h1>");
                out.println("<img src=\"img/invalid-user.jpg\" height=\"200\" width=\"200\" >");
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
