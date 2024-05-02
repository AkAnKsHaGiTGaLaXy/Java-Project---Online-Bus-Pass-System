<%-- 
    Document   : Apply
    Created on : 2 Feb, 2022, 5:10:03 PM
    Author     : Chandrashekhar
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Apply Pass</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">    
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">   
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">   
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">  
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">   
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">  
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">   
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">    
        <!-- Template Main CSS File -->   
        <link href="assets/css/style.css" rel="stylesheet">
        <script src="validation.js"></script>
        
        
        
         <style>
            
            body
           {
                background-color: #f2dede;
               background-image:  url("Image/i1.jpg");
               background-size: 100%;
               
           }
           
           .apply
           {
               background-color: #d9edf7;
               height: 550px;
               width: 800px;
               margin-left: 100px;
               border-radius: 5px;
               
               
           }
           
           .box2
           {
               height: 400px;
               width: 500px;
               font-size: 50px;
               margin-top: 200px;
               
           }
           
           h1
           {
             
               font-family: fantasy;
               font-style: bold;
               font-size: 100px;
               margin-left: 200px;
           }
           
           .small
           {
               height: 60px;
               width: 500px;
               background-color: lightslategrey;
               border-radius: 7px;
               margin-left: 200px;
               margin-top: 100px;
           }
           
           h2
           {
               margin-left: 125px;
               font-family: serif;
               padding-top:  10px;
               font-size: 40px;
           }
           
           .pass
           {
              font-size: 13px;
              color:black;
              
           }
           
           .details
           {
               margin-left: 50px;
               margin-top: 50px;
               border-left: none;
               border-right: none;
               border-top: none;
               height: 30px;
               width: 400px;
               background-color: #d9edf7;
               border-color: #000;
               font-family: sans-serif;
               font-size: 20px;
           }
           
           .button1
           {
               margin-top: 40px;
               height: 50px;
               width: 250px;
               margin-left: 10px;
               border-radius: 10px;
               font-family: fantasy;
               font-size: 30px;
               padding-top:  3px;
           }
           
            .detail
           {
               margin-left: 50px;
               margin-top: 40px;
               border-left: none;
               border-right: none;
               border-top: none;
               height: 30px;
               width: 150px;
               background-color: #d9edf7;
               border-color: #000;
               font-family: sans-serif;
               font-size: 20px;
           }
           
           .details1
           {
               margin-left: 50px;
               margin-top: 20px;
               border-left: none;
               border-right: none;
               border-top: none;
               height: 30px;
               width: 180px;
               background-color: #d9edf7;
               border-color: #000;
               font-family: sans-serif;
               font-size: 20px;
           }
  
        </style>
    </head>
    
    <body>
        
        
        
       
        
        <div class="body">
            
          <header id="header" class="fixed-top d-flex align-items-center" style="height: 80px;">     
            <div class="container d-flex align-items-center" >       
                <h1 class="logo me-auto"><a href="index.html">Online Bus Pass<span></span></a></h1>       
                <!-- Uncomment below if you prefer to use an image logo -->       <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt=""></a>-->        
                <nav id="navbar" class="navbar order-last order-lg-0">         
                    <ul>           
                        <li><a class="nav-link scrollto active" href="student_home.jsp">Home</a></li>           
                        <li><a class="nav-link scrollto" href="student_apply_pass.jsp">Apply for Pass</a></li>           
                        <li><a class="nav-link scrollto" href="student_apply_bonafide.jsp">Apply for Bonafide</a></li>
                         <li><a class="nav-link scrollto" href="student_view_pass.jsp">View Pass</a></li>           
                        <li><a class="nav-link scrollto" href="student_view_bonafide.jsp">View Bonafide</a></li>
                                          
                    </ul>         <i class="bi bi-list mobile-nav-toggle"></i>      
                </nav><!-- .navbar -->       
                
                <a href="admin_login.jsp" class="get-started-btn scrollto">Logout</a>     
            </div>   
        </header>
            
            <br>
            <br>
                
            <div class="row" style="margin-top:100px;">
            <div class="col-sm-2" >
             
            </div>
          
          
            
            <div class="col-sm-8">
            <div class="apply">
                <br></br>
                
                
                
                
                <div class="row">
                    
                    
<%
    Connection cn = null;
    Statement st = null;
   
    String id = "";
    String student_id = "";
    String student_name = "";
    String period = "";
    String route = "";
    String college_name = "";
    String adhar_number = "";
    String admission_reciept = "";
    String bonafide_number = "";
    String status = "";
    String photo="";
    String passno="";
    
    
     Class.forName("com.mysql.jdbc.Driver");
                   cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_bus_pass_system","root","root");
                   
                   st = cn.createStatement();
                   
                   
    String sql = "select * from student_apply_bonafide where id='"+session.getAttribute("id") +"' ";
    ResultSet rs = st.executeQuery(sql);
    
    while(rs.next())
    {
        id = rs.getString("id");
        student_id = rs.getString("student_id");
        student_name = rs.getString("student_name"); 
        college_name = rs.getString("college_name"); 
        admission_reciept = rs.getString("admission_reciept");
        bonafide_number = rs.getString("bonafide_number"); 
        status = rs.getString("status");
        photo = rs.getString("photo"); 
        
        session.setAttribute("student_id",student_id);
                session.setAttribute("id",id);
                session.setAttribute("student_name",student_name);
            
    
%>
                    <form method="post" action="admin_pass_details">
                    <div class="col-sm-7">
                <div class="row">
                    <div class="col-sm-1"></div>
                    
                    <div class="col-sm-3">
                       <label  class="pass">Student ID : <%=student_id%></label> <br> 
                    </div>
                </div>
                    <div class="row">
                    <div class="col-sm-1"></div>
                     
                    <div class="col-sm-6">
                       <label  class="pass">Bonafide Number: <%=bonafide_number%></label> <br> 
                    </div>
                </div>
                  
                 <input class="details" type="hidden" name="id"  value="<%=id%>" disabled="">
                 <input class="details" type="hidden" name="student_id"  value="<%=student_id%>" disabled=""> <br> 
                 <input class="details" type="text" name="student_name" placeholder="" value="<%=student_name%>" disabled=""> <br>
                 <input class="details" type="text" name="college_name" placeholder="" value="<%=college_name%>" disabled=""><br> 
                 <input class="details" type="text" name="admission_reciept" placeholder="" value="<%=admission_reciept%>" disabled="">  
                 <input class="details" type="text" name="status" placeholder="" value="<%=status%>" disabled="">  
                    </div>
                    <div class="col-sm-4">
                        <div style="height: 300px; width: 300px; background-image: url('Image/<%=photo%>'); background-size: cover; margin-top: 80px;"></div>
                       
                        
                         
                    </div>
                 
                 </form>
                 
                 
              <%
              
  }
%>   
                 
                        
            </div>
            </div>
         </div>
            </div>
            
        </div>
        
       
        
    </body>
</html>
