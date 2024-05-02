


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

/**
 *
 * @author Chandrashekhar
 */
public class student_signup extends HttpServlet {
    
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Database db = new Database();
        String result = db.Connectdb();
        
        System.out.println(result);
        
        PrintWriter out = resp.getWriter();
        
        String fname = req.getParameter("fname");
        String addr = req.getParameter("addr");
        String dob = req.getParameter("dob");
        String phno = req.getParameter("phno");
        String eid = req.getParameter("eid");
        String sid = req.getParameter("sid");
        String pass = req.getParameter("pass");
        String cpass = req.getParameter("cpass");
        String gender = req.getParameter("gender"); 
        String event = req.getParameter("submit");
        
        out.println(fname);
        out.println(addr);
        out.println(dob);
        out.println(phno);
        out.println(eid);
        out.println(sid);
        out.println(pass);
        out.println(cpass);
        out.println(gender);  
        
         if(event.equals("Sign up"))
        {
            if(fname.equals("")||addr.equals("")||dob.equals("")||phno.equals("")||eid.equals("")||sid.equals("")||pass.equals("")||cpass.equals("")||gender.equals(""))
            {
                 resp.setContentType("text/html");
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are Empty!');");
                out.println("location='student_signup.jsp';");
                out.println("</script>");
            }
            else
            {
                String insert = db.Insert("insert into student_signup(student_id,student_name,address,dob,contact,email_id,pass,cpass,gender)values('"+sid.toString()+"','"+fname.toString()+"','"+addr.toString()+"','"+dob.toString()+"','"+phno.toString()+"','"+eid.toString()+"','"+pass.toString()+"','"+cpass.toString()+"','"+gender.toString()+"')");
                out.println(insert);
               
                 resp.setContentType("text/html");
                
                out.println("<script type=\"text/javascript\">");   
                out.println("alert('"+insert+"');");
                out.println("location='student_login.jsp';");
                out.println("</script>");
               }
                        
            
            }
        }
    }

