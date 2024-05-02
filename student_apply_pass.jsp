<%-- 
    Document   : Apply
    Created on : 2 Feb, 2022, 5:10:03 PM
    Author     : Chandrashekhar
--%>

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
               height: 650px;
               width: 500px;
               margin-left: 0px;
               border-radius: 5px;
               margin-left: 500px;
               margin-top: 30px;
               opacity: 0.8;
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
               margin-left: 0px;
           }
           
           .small
           {
               height: 60px;
               width: 500px;
               background-color: black;
               border-radius: 7px;
               margin-left: 520px;
               margin-top: 10px;
           }
           
           h2
           {
               margin-left: 110px;
               font-family: serif;
               padding-top: 10px;
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
               color: #204d74;
           }
           
           .button1
           {
               margin-top: 40px;
               height: 50px;
               width: 250px;
               margin-left: 120px;
               border-radius: 10px;
               font-family: fantasy;
               font-size: 30px;
               padding-top:  3px;
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
        
        <form method="post" action="student_apply_pass">
        
       
        
        <div class="body">
            
          <header id="header" class="fixed-top d-flex align-items-center" style="height: 80px;">     
            <div class="container d-flex align-items-center" >       
                <h1 class="logo me-auto"><a href="index.html">Online Bus Pass<span></span></a></h1>       
                <!-- Uncomment below if you prefer to use an image logo -->       <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt=""></a>-->        
                <nav id="navbar" class="navbar order-last order-lg-0">         
                    <ul>           
                        <li><a class="nav-link scrollto active" href="student_home.jsp">Home</a></li>           
                        <li><a class="nav-link scrollto" href="student_apply_bonafide.jsp">Apply for bonafide</a></li>           
                        <li><a class="nav-link scrollto" href="student_apply_pass.jsp">Apply for pass</a></li>
                         <li><a class="nav-link scrollto" href="student_view_bonafide.jsp">View bonafide</a></li>           
                        <li><a class="nav-link scrollto" href="student_view_pass.jsp">View pass</a></li>
                                          
                    </ul>         <i class="bi bi-list mobile-nav-toggle"></i>      
                </nav><!-- .navbar -->       
                
                <a href="admin_login.jsp" class="get-started-btn scrollto">Logout</a>     
            </div>   
        </header>
                
            <div class="row" style="margin-top:100px;">
          
            <div class="small"><h2 class=""><span style="color: white">..Apply  For  Pass..</span></h2> </div>
            </div>
          
          
            
            <div class="col-sm-6">
            <div class="apply">
                
                <br></br>
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-3">
                        <input class="pass" type="radio" name="period" value="Monthaly Pass">   <label  class="pass"> Monthaly Pass</label> <br>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-3">
                        <input class="pass" type="radio" name="period" value="6 Month)">   <label  class="pass">6 Months</label><br>
                    </div>
                     <div class="col-sm-1"></div>
                    <div class="col-sm-3">
                        <input class="pass" type="radio" name="period" value="12 Months">   <label  class="pass">12 Months</label><br>
                    </div>
                        
                 
                </div>
                
                
                 <input class="details" type="text" name="college_name" placeholder="College_Name" onkeypress="return isString(event)"> <br> 
                 <input class="details" type="text" name="adhar_number" placeholder="Aadhar_Card" onkeypress="return isNumber(event)"><br>
                 <input class="details" type="text" name="admission_reciept" placeholder="Admission_Receipt"><br>
                 <input class="details" type="text" name="bonafide_number" placeholder="Bonafide_Certificate"><br>
                 <input class="details" type="text" name="route" placeholder="From and to">
                 <input class="details" type="file" name="photo">
                 
                 
                 
                 <input class="button1" type="submit" name="submit" value="Apply Now">
                        
            </div>
                </div>
            </div>
            
        
        
        </form>
        
    </body>
</html>
