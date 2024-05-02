<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html> 
<html>  
    <head>   
            
       
          
        <!-- Favicons -->   
         
        <!-- Google Fonts -->   
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
        
        <style>
            
        
         body
        {
            background-image: url("image/i1.webp");
            background-repeat: no-repeat;
            background-size: 100%;
        }
        
        .box
        {
            height:700px;
            width:1300px;
            background-color: black;
            opacity:0.9;
            margin-left:110px;
            margin-top: 30px;
            padding-top: 20px;
            border-radius: 10px;
            color:white;
            
        }
         h1
        {
            
            font-family: Arial black;
            margin-left: 50px;
            font-size:35px;
            margin-top:100px;
        }
        label
        {
            font-family: Arial black;
            font-size:20px;
            margin-left: 20px;
        }
        
        * {font-family: Helvetica Neue, Arial, sans-serif; }



        *h1, table { text-align: center; width: 100%; }

        table {border-collapse: collapse;  width: 90%; margin: 0 auto 5rem; color: black;}

        th, td { padding: 1.5rem; font-size: 0.9rem; }

        tr {background: hsl(50, 50%, 80%); }

        tr, td { transition: .4s ease-in;  } 

        tr:first-child {background: #e03a3c }

        tr:nth-child(even) { background: hsla(50, 50%, 80%, 0.7); }

        td:empty {background: hsla(50, 25%, 60%, 0.7); }

        tr:hover:not(#firstrow), tr:hover td:empty {background: #ff0; pointer-events: visible;}
        
        tr:hover:not(#firstrow) { transform: scale(1.2); font-weight: 700; box-shadow: 0px 3px 7px rgba(0, 0, 0, 0.5);}


        
    </style>
    
    
    
         
    </head>  <body>    <!-- ======= Header ======= -->  
        <header id="header" class="fixed-top d-flex align-items-center">     
            <div class="container d-flex align-items-center">       
                <h1 class="logo me-auto"><a href="index.html">Online Bus Pass<span></span></a></h1>       
                <!-- Uncomment below if you prefer to use an image logo -->       <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt=""></a>-->        
                <nav id="navbar" class="navbar order-last order-lg-0">         
                    <ul>           
                        <li><a class="nav-link scrollto active" href="admin_home.jsp">Home</a></li>           
                        <li><a class="nav-link scrollto" href="admin_pass_request.jsp">Pass Requests</a></li>           
                        <li><a class="nav-link scrollto" href="admin_total_pass.jsp">Pass Assigned</a></li>          
                                          
                    </ul>         <i class="bi bi-list mobile-nav-toggle"></i>      
                </nav><!-- .navbar -->       
                
                <a href="admin_login.jsp" class="get-started-btn scrollto">Logout</a>     
            </div>   
        </header>   
            
            
            <!-- End Hero -->     <!-- ======= Footer ======= -->      
            <a href="#" class="back-to-top d-flex align-items-center justify-content-center">
                <i class="bi bi-arrow-up-short"></i></a>    <!-- Vendor JS Files -->   
                <script src="assets/vendor/purecounter/purecounter.js"></script>  
                <script src="assets/vendor/aos/aos.js"></script>  
                <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>  
                <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>   
                <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>  
                <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>  
                <script src="assets/vendor/php-email-form/validate.js"></script>    
                <!-- Template Main JS File -->   <script src="assets/js/main.js"></script> 
                
                
                    
               
                <div class="box">
            <h1 align="center">STUDENTS PASS REQUEST</h1>
            
            <div class="row">
                
                <div class="col-sm-6"></div>
            </div>
            <br>
            
           
          

<table id="racetimes">
    <tr id="firstrow" style="color: white;">
        
        
    <th>ID</th>
    <th>Student ID</th>
    <th>Student Name</th>
    <th>Period</th>
    <th>College Name</th>
    <th>Admission Receipt No</th>
    <th>Adhar Number</th>
    
    <th>Bonafide Number</th>
    <th>Route</th>
    <th>Status</th>
    <th> </th>
</tr>

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
    
    
    
     Class.forName("com.mysql.jdbc.Driver");
                   cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_bus_pass_system","root","root");
                   
                   st = cn.createStatement();
                   
                   
    String sql = "select * from student_apply_pass where status='Pending' ";
    ResultSet rs = st.executeQuery(sql);
    
    while(rs.next())
    {
        id = rs.getString("id");
        student_id = rs.getString("student_id");
        student_name = rs.getString("student_name");
        period = rs.getString("period");
        college_name = rs.getString("college_name");
        adhar_number = rs.getString("adhar_number");
        admission_reciept = rs.getString("admission_reciept");
        bonafide_number = rs.getString("bonafide_number");
        route = rs.getString("route");
        status = rs.getString("status");
        
        
    
%>

     <form method="post" action="admin_pass_request">
    <tr>
     
    <input type="hidden" name="id" value="<%=id%>"> 
    <input type="hidden" name="student_id" value="<%=student_id%>"> 
    <input type="hidden" name="student_name" value="<%=student_name%>"> 
    
    <td><%=id%></td>
    <td><%=student_id%></td>
    <td><%=student_name%></td>
    <td><%=period%></td>
    <td><%=college_name%></td>
    <td><%=adhar_number%></td>
    <td><%=admission_reciept%></td>
    <td><%=bonafide_number%></td> 
    <td><%=route%></td> 
    <td><%=status%></td>
    <td><input type="submit" name="submit" value="See Details"></td>
    
     </form> 
</tr>

<%

    }
%>
</table>
            
        </div>
        
                    
    </body>
</html>