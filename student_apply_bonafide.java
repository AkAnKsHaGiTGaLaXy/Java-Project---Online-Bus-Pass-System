/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
public class student_apply_bonafide extends HttpServlet {

    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Database db = new Database();
        String result = db.Connectdb();
        
        System.out.println(result);
        
        HttpSession session = req.getSession();
        PrintWriter out = resp.getWriter();
        
        String student_id = session.getAttribute("student_id").toString();
        String student_name = session.getAttribute("student_name").toString();
        
         
        String college_name = req.getParameter("college_name"); 
        String admission_reciept = req.getParameter("admission_reciept");  
        String photo = req.getParameter("photo"); 
        
        String event = req.getParameter("submit");
        
        out.println(student_id);
        out.println(student_name); 
        out.println(college_name); 
        out.println(admission_reciept); 
        
         if(event.equals("Apply Now"))
        {
            if(admission_reciept.equals(""))
            {
                 resp.setContentType("text/html");
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are Empty!');");
                out.println("location='student_apply_bonafide.jsp';");
                out.println("</script>");
            }
            else
            {
                
                session.setAttribute("student_id",student_id);
                session.setAttribute("student_name",student_name);
                
                String insert = db.Insert("insert into student_apply_bonafide(student_id,student_name,college_name,admission_reciept,status,photo)values('"+student_id+"','"+student_name.toString()+"','"+college_name.toString()+"','"+admission_reciept.toString()+"','pending','"+photo.toString()+"')");
                out.println(insert);
               
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");   
                out.println("alert('"+insert+"');");
                out.println("location='student_apply_pass.jsp';");
                out.println("</script>");
               }
                        
            
            }
        }
    }
