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
public class student_apply_pass extends HttpServlet {

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
        
        String period = req.getParameter("period");
        String college_name = req.getParameter("college_name");
        String adhar_number = req.getParameter("adhar_number");
        String admission_reciept = req.getParameter("admission_reciept");
        String bonafide_number = req.getParameter("bonafide_number");
        String route = req.getParameter("route");
        String photo = req.getParameter("photo"); 
        
        String event = req.getParameter("submit");
        
        out.println(student_id);
        out.println(student_name);
        out.println(period);
        out.println(college_name);
        out.println(adhar_number);
        out.println(admission_reciept);
        out.println(bonafide_number);
        out.println(route);
        out.println(photo); 
        
         if(event.equals("Apply Now"))
        {
            if(period.equals("")||college_name.equals("")||adhar_number.equals("")||admission_reciept.equals("")||bonafide_number.equals("")||route.equals("")||photo.equals(""))
            {
                 resp.setContentType("text/html");
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are Empty!');");
                out.println("location='student_apply_pass.jsp';");
                out.println("</script>");
            }
            else
            {
                
                session.setAttribute("student_id",student_id);
                session.setAttribute("student_name",student_name);
                
                String insert = db.Insert("insert into student_apply_pass(student_id,student_name,period,college_name,adhar_number,admission_reciept,bonafide_number,route,photo,status)values('"+student_id+"','"+student_name.toString()+"','"+period.toString()+"','"+college_name.toString()+"','"+adhar_number.toString()+"','"+admission_reciept.toString()+"','"+bonafide_number.toString()+"','"+route.toString()+"','"+photo.toString()+"','Pending')");
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
