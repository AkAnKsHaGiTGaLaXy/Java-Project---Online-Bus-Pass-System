<%-- 
    Document   : registration
    Created on : 1 Feb, 2022, 12:14:05 PM
    Author     : Chandrashekhar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       

   
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
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
            .body
            {
                background-image: url("Image/i1.jpg");
                background-repeat: no-repeat;
                background-size: 100%;
            }
            .h1
            {
              
              margin-left: 850px;
              font-family:Arial black;
              font-size: 50px;
              color: black;
            }
            
            .first
            {
                height: 600px;
                width: 800px;
                
                margin-left: 50px;
                margin-top: 20px;
                border-radius: 10px;
                background-color: black;
                background-size: cover;
                opacity: 0.8;
            }
            
            .box
            {
                background-color: white;
                border-left: none;
                border-right: none;
                border-top: none;
                color: black;
                
                width: 300px;
                height: 40px;
                font-size: 20px;
                font-family: "Times New Roman", Times, serif;
            }
            
            h2
            {
                font-family: Arial, Helvetica, sans-serif;
                font-size: 50px;
                color: white;
            }
            
            .gender
            {
                color: white;
            }
            
            .button
            {
                height: 50px;
                width: 100px;
                background-color: whitesmoke;
                color: black;
                border-radius: 10px;
                margin-top: -50px;
            }
            
            
        </style>
        
    </head>
    <body>
        <div class="container d-flex align-items-center">
      <h1 class="logo me-auto"><a href="index.html">Online Bus Pass<span></span></a></h1>
     

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="index.html">Home</a></li>
          <li><a class="nav-link scrollto" href="admin_login.jsp">Admin</a></li>
          <li><a class="nav-link scrollto" href="student_login.jsp">Student</a></li>
          <li><a class="nav-link scrollto " href="college_login.jsp">College</a></li>
           
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>    
    </div>
        
        <form method="post" action="student_signup">
            
        <div class="body">
            <h1 class="h1">
            <br>
            <span style="color: #523e02">S</span><span style="color: black">tudent</span>
            <span style="color:#523e02">S</span><span style="color: black">ign-</span>
            <span style="color: #523e02">u</span><span style="color: black">p</span>
            <span style="color: #523e02">F</span><span style="color: black">orm</span>
            </h1>
        <div class="first">
            <div class="row">
                <h2 align="center"> Personal Details</h2>
                <div class="col-sm-1">  </div>
                 
            <div class="col-sm-5">
                <br><br><br>
                <input class="box" type="text" name="fname" placeholder="Full name">
                <br><br><br>
                <input class="box" type="text" name="addr" placeholder="Address">
                <br><br><br>
                
                <input class="box" type="date" name="dob" placeholder="Date Of Birth">
                
                <br><br><br>
                <input class="box" type="text" name="phno" placeholder="Phone Number">
                <br><br><br>
                <br><br><br>
                
                <input class="button" type="submit" name="submit" value="Sign up">
            </div>
                    
                    
                    
                    
                    
                    <div class="col-sm-5">
                        <br><br><br>
                
                 <input class="box" type="text" name="eid" placeholder="E-mail Id">
                <br><br><br>
                
                <input class="box" type="text" name="sid" placeholder="Student Id">
                <br><br><br>
                <input class="box" type="password" name="pass" placeholder="Password">
                <br><br><br>  
                <input class="box" type="password" name="cpass" placeholder="Confirm Password">
                <br><br>
                
                <h3 style="color: #46b8da"> Gender</h3>
                
                <input class="gender" type="radio" name="gender" value="male">   <label  class="gender"> male</label> <br>
                <input class="gender" type="radio" name="gender" value="female">   <label  class="gender">Female</label><br>
                <input class="gender" type="radio" name="gender" value="other">   <label  class="gender">Other</label><br>
           
            </div>
                    <div class="col-sm-1"></div>
                
            </div>
        </div>
        </div> 
    </form>     
    </body>
</html>
