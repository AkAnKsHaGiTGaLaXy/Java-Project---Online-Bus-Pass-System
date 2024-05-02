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
public class college_signup extends HttpServlet {

    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Database db = new Database();
        String result = db.Connectdb();
        
        System.out.println(result);
        
        PrintWriter out = resp.getWriter();
        
        String fname = req.getParameter("cname");
        String email = req.getParameter("email");
        String contact = req.getParameter("contact");
        String uid = req.getParameter("cid");
        String pass = req.getParameter("pass");
        String cpass = req.getParameter("cpass");
        String event = req.getParameter("submit");
        
        out.println(fname);
        out.println(email);
        out.println(contact);
        out.println(uid);
        out.println(pass);
        out.println(cpass);
        
        
        if(event.equals("Sign Up"))
        {
            if(fname.equals("")||email.equals("")||uid.equals("")||pass.equals("")||cpass.equals("") || contact.equals(""))
            {
                resp.setContentType("text/html");
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are Empty!');");
                out.println("location='college_sinup.jsp';");
                out.println("</script>");
            }
            else
            {
               try
               {
                String insert = db.Insert("insert into college_signup(fname,email,contact,uid,pass,cpass)values('"+fname.toString()+"','"+email.toString()+"','"+contact+"','"+uid.toString()+"', '"+pass.toString()+"', '"+cpass.toString()+"' )");
                               
                resp.setContentType("text/html");
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+insert+"');");
                out.println("location='college_login.jsp';");
                out.println("</script>");
                
                 
               }
               catch(Exception ex)
               {
                          resp.setContentType("text/html");
                
                         out.println("<script type=\"text/javascript\">");
                         out.println("alert('"+ex.toString()+"');");
                         out.println("location='college_signup.jsp';");
                         out.println("</script>"); 
               }
                        
            
            }
    }
        
        

 }
}