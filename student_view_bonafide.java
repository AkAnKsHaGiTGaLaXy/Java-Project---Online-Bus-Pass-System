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
public class student_view_bonafide extends HttpServlet {
    
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Database db = new Database();
        String result = db.Connectdb();
        
        System.out.println(result);
        
        HttpSession session = req.getSession();
        PrintWriter out = resp.getWriter();
        
        String id = session.getAttribute("id").toString();
        String student_id = session.getAttribute("student_id").toString();
        String student_name = session.getAttribute("student_name").toString(); 
        String status = req.getParameter("status"); 
        String bonafide_number = req.getParameter("bonafide_number");
         
        
        String event = req.getParameter("submit");
        
        out.println(status);
        out.println(student_id);
        out.println(id);
        out.println(student_name);
        out.println(status);
        out.println(bonafide_number);
        
        
        
         if(event.equals("Update Details"))
        {
                session.setAttribute("id",id);
                session.setAttribute("student_id",student_id);
                session.setAttribute("student_name",student_name);
                
                String update = db.update("update student_apply_pass set status='"+status.toString()+"', bonafide_number='"+bonafide_number.toString()+"' where id='"+id.toString()+"' && student_id='"+student_id+"' ");
                out.println(update);
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");  
                out.println("alert('Status updated to "+status+"');");
                out.println("location='student_view_bonafide.jsp';");
                out.println("</script>");
               }
                        
            
            }
        }
   
