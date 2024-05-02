<%-- 
    Document   : login
    Created on : 31 Jan, 2022, 11:09:08 PM
    Author     : Chandrashekhar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
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
                background-color: #122b40;
                height: 480px;
                width: 400px;
                margin-left: 230px;
                border-radius: 10px;
                opacity: 0.8;
                background-size: cover;
                border-color: whitesmoke;
            }
            
            .subdiv
            {
                background-color: white;
                height: 75px;
                width: 450px;
                border-radius: 3px;
                margin-left: 200px;
                opacity: 0.8;
            }
            
            .heading
            {
                font-family: Arial black;
                font-size: xx-large;
                color: black;
                margin-left: 50px;
                padding-top: 14px;
            }
            
            .textbox
            {
                height: 40px;
                width: 300px;
                background-color: white;
                margin-left: 50px;
                margin-top: 60px;
                border-radius: 13px;
                opacity:3px;
                border: none;
                font-family: "Times New Roman", Times, serif;
                font-size: 20px;
                color: black;
            }
            
            .button1
           {
                height: 40px;
                width: 150px;
                background-color: #3dd5f3;
                margin-left: 125px;
                margin-top: 50px;
                border: none;
                font-size: large;
                font-family: Arial black;
           }
           
           .textbox2
           {
               height: 30px;
               width: 200px;
               margin-top: 30px;
               margin-left: 100px;
               border-radius: 6px;
               border: none;
               background-color:orange;
              font-size: 20px;
           }
           
           hr
           {
               width: 350px;
               color: wheat;
               margin-left: 25px;
           }
           
           
           
           h1
           {
               margin-left: 230px;
               margin-top: 100px;
               font-family: Arial black;
               font-size: 50px;
           }
           
           .a1
           {
               margin-left: 100px;
               color: #c9e2b3;
               font-size: 20px;
           }
        
            
        </style>
  
  
         </head>
        
       
        
   
    
    <body class="background">
        
         <header id="header" class="fixed-top d-flex align-items-center" style="height: 80px;">
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
  </header> 
        
         <div class="row">
        <form method="post" action="student_login">
           
                
                
            <div class="col-sm-8">
                    
                <div class="subdiv">
                    <h1 class="heading">Student Login Form</h1><br>
                </div><br>
                 <div class="maindiv">
                 <input class="textbox" type="text" name="emailmob" placeholder="Student-ID">
                 <input class="textbox" type="password" name="pass" placeholder="Enter Password">
                 <input type="submit"  value="Log In" name="submit" class="button1">
                 <br>
                 <br>
                 <br>
                 
                 <hr class="hr"> 
                 <br>
                 <a class="a1" href="">Forgotten password..?</a>
                 <input class="textbox2" type="submit" value="Register" name="submit">

              </div> 
            
                 </div>
                
        
        
        </form>
</div>
        
    </body>
</html>
