<%-- 
    Document   : Admin_Login
    Created on : 3 Feb, 2022, 12:29:13 PM
    Author     : Chandrashekhar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <script> <link src="validation.js"></script>
        <title>Online Pass</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
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
  <script src="validation.js"></script>
        
    </head>
    
<style>
        .row1{
            height: 100px;
            width: 1000px;
           
            
            background-color:whitesmoke;
            margin-left: 250px;
            
            
            
            
        }
        
        
        .row1
        {
            margin-left: 100px;
            height: 90px;
            width: 800px;
            background-color:  #0c63e4;
            opacity: 0.8;
            margin-left: 350px;
            margin-top: 0px;
            border-radius: 5px;
        }
        
        .row2
        {
            margin-left: 100px;
            height: 450px;
            width: 800px;
            background-color: whitesmoke;
            opacity: 0.9;
            margin-left: 350px;
            margin-top: 40px;
            
        }
        
        h2{
            color: white;
            font-size: xx-large;
            font-family: Arial black;
            
        }
        body{
            
           background-image: url("Image/i1.jpg");
           background-repeat: no-repeat;
           background-size: 100%;
           
           
           
            
        }
        h1{
            font-family: Papyrus;
            font-size: 50px;
            margin-left: 750px;
            
            
        }
        
        .box{
            background-color: white;
            border-left: none;
            border-right: none;
            border-top: none;
            color: black;
            width: 300px;
            font-size: 20px;
            margin-top: 20px;
           margin-left: 37px;
            
            
        }
        .box2{
            
            border-left: none;
            border-right: none;
            border-top:10px;;
            color: white;
            width: 300px;
            font-size: 20px;
            
            
        }
        .box3{
             background-color: #777777;
             border-color: white;
             border-radius: 10px;
           height: 45px;
            color:  #080808;
            width: 300px;
            font-size: 20px;
            margin-left: 250px;
            border-bottom-color: none;
            margin-top: 50px;
            font-family: Arial black;
        }   
        .gender
        {
            color: white;
            font-size:15px;
            
            
            
        }
        h3
        {
            color: white;
            
        }
        
        .a1
        {
            margin-top: 50px;
        }
        
        
                
        
   </style>
    <body>
        
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
      </nav><!-- .navbar -->

      
    </div>
  </header><!-- End Header -->

        
  <br><br><br><br><br><br><br>
        
        <form method="post" action="college_signup">
            
        <h1><span style="color: orange"></span><span style="color: #ce8483"></span>
        <span style="color: orange"></span><span style="color: #ce8483"></span>
        <span style="color: orange"></span><span style="color: #ce8483"></span>
        <span style="color: orange"></span><span style="color: #ce8483"></span>
        </h1>
            
        <div class="row1">
            <br><br>
            <h2 align="center">College Sign-Up Form</h2>
            <br></div>
            <div class="row2">
            <div class="col-sm-6">
                <br>  
                <input class="box" type="text" name="cname" placeholder="College Name" onkeypress="return isString(event)">
                <br><br><br>
                <input class="box" type="text" name="email" placeholder="Email-Id" >
                <br><br><br>
                <input class="box" type="text" name="contact" placeholder="Contact" onkeypress="return isNumber(event)">
                
            </div>
            <div class="col-sm-6">
                <br>
                <input class="box" type="text" name="cid" placeholder="College-Id" required="">
                <br><br><br>
                
                 
                <input class="box" type="password" name="pass" placeholder="Password" required="">
                <br><br><br>  
                <input class="box" type="password" name="cpass" placeholder="Conform Password" required="">
                
                <br><br>  
            </div>
            
            <div class="row" style="margin-top: 250px;">
                <br><br>
                <input class="box3" type="submit" name="submit" value="Sign Up">
                <br><br><br><br><br>
                <center><a  class="a1" style="margin-top: 900px; font-size: 20px;" href="admin_login.jsp"><br>Already Have an Account..?</a></center>
            </div>
             
            
            </div>
           
            
            
        
        </form>   
    </body>
</html>