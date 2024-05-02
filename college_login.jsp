<%-- 
    Document   : college_login
    Created on : 5 May, 2022, 6:12:20 PM
    Author     : Chandrashekhar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Bus Pass</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
        <meta content="" name="description">
  <meta content="" name="keywords">

   
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
        
        <style>
            
            .background
            {
               
               background-image: url("Image/i1.jpg");
               background-repeat: no-repeat;
               background-size: 100%;
            }
            
            .maindiv
            {
                background-color:whitesmoke;
                height: 430px;
                width: 400px;
                margin-left: 530px;
                border-radius: 0px;
                opacity: 0.9;
                background-size: cover;
                border-color: black;
                margin-top: 20px;
               
            }
            
            .subdiv
            {
                background-color: #d0e9c6;
                height: 70px;
                width: 450px;
                border-radius: 0px;
                margin-top: 0px;
                margin-left: 500px;
                opacity: 0.9;
                
               
            }
            
            .heading
            {
                font-family:Arial black;
                font-size: xx-large;
                color: midnightblue;
                margin-left: 105px;
                padding-top: 16px;
            }
            
            .textbox
            {
                height: 35px;
                width: 300px;
                background-color: whitesmoke;
                margin-left: 50px;
                margin-top: 60px;
                border-radius: 0px;
                opacity:0px;
                 border-left: none;
                border-right: none;
                border-top: none;
                color: #080808;
                font-size: 20px;
                font-family: monospace;
                border-color: black;
                
            }
            
            
            .button1
           {
                height: 35px;
                width: 150px;
                background-color: #055160;
                margin-left: 125px;
                margin-top: 40px;
                border: none;
                font-size: large;
                font-family: Arial black;
                font-style: Bold;
                color: white;
           }
           
           .textbox2
           {
               height: 30px;
               width: 200px;
               margin-top: 60px;
               margin-left: 100px;
               border-radius: 6px;
               border: none;
               background-color: #ccc;
              
           }
           
           hr
           {
               width: 350px;
           }
           
           .a1
           {
               margin-left: 105px;
               color: black;
               font-size: 20px;
           }
           i
           {
               color: white;
           }
           
           h1
           {
               margin-left: 0px;
               margin-top: 20px;
               font-family: Lucida Console;
               font-size: 40px;
               
           }
            
        </style>
        
    </head>
    
 
        <body class="background">
        <header id="header" class="fixed-top d-flex align-items-center" style="height: 80px;">
    <div class="container d-flex align-items-center">
      <h1 class="logo me-auto"><a href="index.html">Online Bus Pass<span></span></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt=""></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="index.html">Home</a></li>
          <li><a class="nav-link scrollto" href="admin_login.jsp">Admin</a></li>
          <li><a class="nav-link scrollto" href="student_login.jsp">Student</a></li>
          <li><a class="nav-link scrollto " href="college_login.jsp">College</a></li>
           
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>
      
      <a href="index.html" class="get-started-btn scrollto">Get Started</a>
    </div>
  </header><!-- End Header -->

  <br>
        <form method="post" action="college_login">
            <div class="row" style="margin-top:100px;">
               
            
                <div class="col-sm-6">
        <div class="subdiv">
            
            <h1 class="heading">College Login</h1>
            </div></div>
                <br>
                    <div class="maindiv">       
            <input class="textbox" type="text" name="uid" placeholder="College-Id" >
            <input class="textbox" type="password" name="pass" placeholder="Enter Password" >
                 
            <input type="submit"  value="Log In" name="submit" class="button1">
                 <br>
                  
                  
                 <br>
                 <a class="a1" href="">Forgotten password..?</a>
                 <br>
                 <input type="submit"  value="Sign Up" name="submit" class="button1" style="width: 300px; margin-left: 45px;">

                 

        </div> 
                </div>
            
        </form>

        <h1></h1>
    </body>
</html>
