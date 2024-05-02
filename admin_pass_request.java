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
public class admin_pass_request extends HttpServlet {
    
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Database db = new Database();
        String result = db.Connectdb();
        
        System.out.println(result);
        
        HttpSession session = req.getSession();
        PrintWriter out = resp.getWriter();
        
        String id = req.getParameter("id");
        String student_id = req.getParameter("student_id");
        String student_name = req.getParameter("student_name"); 
         
        
        String event = req.getParameter("submit");
        
        out.println(student_id);
        out.println(id);
        out.println(student_name); 
        
        
         if(event.equals("See Details"))
        {
            
            session.setAttribute("id",id);
              session.setAttribute("student_id",student_id);
                session.setAttribute("student_name",student_name);
                
               
               
                 resp.setContentType("text/html");
                
                out.println("<script type=\"text/javascript\">");    
                out.println("location='admin_pass_details.jsp';");
                out.println("</script>");
               }
                        
            
            }
        }
   
