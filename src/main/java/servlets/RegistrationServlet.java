

package servlets;
import beans.*;
import com.mysql.cj.Session;
import database.*;

import static java.awt.Color.green;
import validate.*;
import filters.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ayush
 */
@WebServlet(name = "Registration", urlPatterns = {"/Registration"})
public class RegistrationServlet extends HttpServlet implements Filter {

    @Override
    public void init() throws ServletException {
        try {
            UseDB db = new UseDB();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(RegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        super.init(); //To change body of generated methods, choose Tools | Templates.
    }


    
    
    @Override
    public  void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        if( request!=null )    
        {    
            String destination = "";
            HttpSession session = request.getSession();
            User user = new User();
            String uname = request.getParameter("uname");
            String password = request.getParameter("password");

            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String result = UseDB.isUserRepeated(uname,email);
            String message1 = " ";
            String message2 = " ";
            String color = "";
            if( "false".equals(result) )
            {
                ArrayList<String> booksIssued = new ArrayList<String>();
                
                user = new User(uname,password,email,fname,lname, "image_folder/user_profile", booksIssued);
                
                UseDB.addUser(user);
                
                session.setAttribute("user", user);
                
                message1 = "Congrats " + fname + " " + lname +
                        " User Registration Successfull";
                message2 =  "Redirecting to Home Page...";
                color = "green";
                destination = "UserHomeBooks";
                
            }
            else if( "error".equals(result) )
            {
                message1 = "Some error occured";
                message2 = "Redirecting to User Login-Register Page....";
                destination = "/librarymanagement/user_login.jsp";
            }
            else
            {
                message1 = result + " Already in Use - Try with another " + result;
                message2 = "Redirecting to User Login-Register Page....";
                color = "red";
                destination = "/librarymanagement/user_login.jsp";
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
            out.println("<title>Servlet RegistrationServlet</title>");
            out.println("</head>");
            out.println("<body><br>");
            
            out.println("<h1>" +  message1 + "</h1><br>");
            out.println("<h1>" +  message2 + "</h1><br>");
            if(color=="red")
            {
                out.println("<img src=\"img/sad-face-emoji.jpg\" height=\"200\" width=\"200\" >");
            }
            else
            {
                out.println("<img src=\"img/happy-smiley.jpg\" height=\"200\" width=\"200\" >");
            }
            out.println("</body>");
            out.println("</html>");
            response.setHeader("Refresh", "5; URL="+destination);
            if( "false".equals(result))
            {
                System.out.println("Going to Home Page");
                
            }
            else
            {
                System.out.println("Going to LOgin Page");
                
            }

        }
        else
        {
            response.sendRedirect("/librarymanagement/user_login.jsp");
        }

        }

        @Override
        public void init(FilterConfig fc) throws ServletException {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }

        @Override
        public void doFilter(ServletRequest sr, ServletResponse sr1, FilterChain fc) throws IOException, ServletException {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }

    
}

