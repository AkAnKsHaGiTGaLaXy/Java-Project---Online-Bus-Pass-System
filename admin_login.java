/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Chandrashekhar
 */
public class admin_login extends HttpServlet {
    
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Database db = new Database();
        String result = db.Connectdb();
        
        System.out.println(result);
        
        
        
        PrintWriter out = resp.getWriter();
        
        String uid = req.getParameter("uid");
        String pass = req.getParameter("pass");
        String event = req.getParameter("submit");
        
        out.println(uid);
        out.println(pass);
        
        if(event.equals("Log In"))
        {
           if(uid.equals("") || pass.equals(""))
           {
                resp.setContentType("text/html");
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are Empty!');");
                out.println("location='admin_login.jsp';");
                out.println("</script>");
           }
           else
           {
               try
               {
                   Class.forName("com.mysql.jdbc.Driver");
                   cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_bus_pass_system","root","root");
                   
                   st = cn.createStatement();
                   
                   String sql = "select * from admin_signup where uid = '"+uid.toString()+"' and pass = '"+pass.toString()+"' ";
                   ResultSet rs = st.executeQuery(sql);
                   
                   if(rs.next())
                   {
                      
                       
                       resp.setContentType("text/html");
                
                       out.println("<script type=\"text/javascript\">");
                       out.println("alert('login successfully!');");
                       out.println("location='admin_home.jsp';");
                       out.println("</script>");
                       
                   }
                   else
                   {
                      resp.setContentType("text/html");
                
                       out.println("<script type=\"text/javascript\">");
                       out.println("alert('Incorrect admin id and password');");
                       out.println("location='admin_login.jsp';");
                       out.println("</script>");  
                   }
               }
               
               
               catch(Exception ex)
               {
                  resp.setContentType("text/html");
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+ex.toString()+"'));");
                out.println("location='admin_login.jsp';");
                out.println("</script>"); 
               }
           }
        }
        
        if(event.equals("Sign Up"))
        {
          resp.sendRedirect("admin_signup.jsp");
        }
        
        
    }
}
                
            
        
           
    
    

