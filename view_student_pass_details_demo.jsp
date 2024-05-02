<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration page</title>
        
         <link rel="stylsheet" href="bootstrap.css">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
    </head>
    
    <style>
        
        body
        {
            background-image: url("image/11.webp");
            background-repeat: no-repeat;
            background-size:130%;
        }
        .main
        {
            height:1200px;
            width:1200px;
            background-color: black;
            margin-left:130px;
            margin-top:0px;
            border-radius:5px;
            opacity:0.9;
            color:white;
            
            
        }
        h1
        {
           
          font-family: Arial black;
           padding-top: 10px;
           margin-left: 10px;
           color: #ce8483;
        }
        h4
        {
           font-family: Arial black;
           padding-top: 10px;
           margin-left: 10px;
            
        }
        .box
        {
            height: 30px;
            width:300px;
            border-radius: 5px;
            border: none;
            margin-left: 10px;
        }
        lable
        {
          font-family: Arial black;
           padding-top: 10px;
           margin-left: 10px;
           color: black;
           font-size: 15px;
           color:white;
        }
        .box2
        {
            height: 50px;
            width:1000px;
            border-radius:5px;
            border:none;
            margin-left: 20px
            
                
        }
        .button
        {
            height: 30px;
            width:150px;
            border-radius: 5px;
            font-family: Arial black;
            margin-left: 400px;
            background-color: #c9302c;
            
        }
        
        
        
    </style>
    
    
    <body>
        <form>
        <div class="main">
            
            <h1 align="left">Registration Page</h1>
            <h5>Please fill the information about you</h5>
            <div class="row">
                <div class="col-sm-4">
                    <h3>Personal Information</h3>
                </div>
            </div>
            <div class="row">
                <br>
                <div class="col-sm-4">
                    <lable>First name<span style="color:red">*</span></lable>
                    <br>
                </div>
                <div class="col-sm-4">
                    <lable>Middle name<span style="color:red">*</span></lable>
                    <br>
                </div>
                <div class="col-sm-4">
                    <lable>Last name<span style="color:red">*</span></lable>
                    <br>
                </div>
            </div>
            
            <div class="row">
                <br>
                <div class="col-sm-4">
                    <i class='fas fa-user-alt' style='font-size:20px'></i><input type="type" class="box" name="fname">
                </div>
                <div class="col-sm-4">
                     <i class='fas fa-user-alt' style='font-size:20px'></i><input type="type" class="box" name="mname">
                </div>
                <div class="col-sm-4">
                     <i class='fas fa-user-alt' style='font-size:20px'></i><input type="type" class="box" name="lname">
                </div>
            </div>
            
            <div class="row">
                <br>
                <div class="col-sm-4">
                    <lable>DOB<span style="color:red">*</span></lable>
                   
                 
                </div>
                 
                 <div class="col-sm-6">
                     <lable>Gender<span style="color:red">*</span></lable>
                      
                 </div>
                
                <div class="row">
                    <br>
                    <div class="col-sm-4">
                        <br>
                        <i class="fa fa-calendar" style='font-size:20px;margin-left: 20px;'></i><input type="date" name="date" style="margin-left: 20px;font-family: Arial black;color:black;">
                    </div>
                    <div class="col-sm-5">
                        <br>
                        <div class="col-sm-2">
                            <input type="radio" name="male" style="font-family:Arial black;font-size: 15px;">&nbsp;male<br>
                            
                        </div>
                        <div class="col-sm-3">
                            <input type="radio" name="female" style="font-family:Arial black ">&nbsp;female<br>
                        </div>
                        
                        
                    </div>
                </div>
            </div>
            
            <div class="row">
                <br>
               
                
                <div class="col-sm-6">
                     <h3 style="margin-left: 5px">Address</h3>
                    <lable>Current Address<span style="color:red">*</span></lable>
                    
                </div>
         
               
            </div>
            <div class="row">
                <br>
                <i class='fas fa-pen' style='font-size:20px;margin-left: 20px;'></i><input type="textarea" class="box2" name="caddress">
            </div>
            
            <div class="row">
                <br>
                <div class="col-sm-6">
                    <lable>State<span style="color:red">*</span></lable>
                   
                </div>
                <div class="col-sm-6">
                      <lable>District<span style="color:red">*</span></lable>
                </div>
            </div>
            
            <div class="row">
                <br>
                <div class="col-sm-6">
                    <i class='fas fa-pen' style='font-size:15px;margin-left: 5px;'></i><input type="text" class="box" name="state">
                    
                </div>
                 <div class="col-sm-6">
                    <i class='fas fa-pen' style='font-size:15px;margin-left: 5px;'></i><input type="text" class="box" name="district">
                    
                </div>
                    
                    
            </div>
            
            <div class="row">
                <br>
                <div class="col-sm-6">
                    <lable>City<span style="color:red">*</span></lable>
                </div>
                <div class="col-sm-6">
                    <lable>Pincode<span style="color:red">*</span></lable>
                </div>
            </div>
            <div class="row">
                <br>
                <div class="col-sm-6">
                    <i class='fas fa-pen' style='font-size:15px;margin-left: 5px;'></i><input type="text" class="box" name="city">
                </div>
                 <div class="col-sm-6">
                     <i class='fas fa-pen' style='font-size:15px;margin-left: 5px;'></i><input type="text" class="box" name="pincode">
                 </div>
            </div>
            
            <div class="row">
                <br>
                <div class="col-sm-2">
                    <h3 style="font-family:Helvetica,Arial,sans-serif ">Qualification</h3>
                </div>
                
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <lable>10th marks<span style="color:red">*</span></lable>
                    
                </div>
                <div class="col-sm-6">
                    <lable>12th marks<span style="color:red">*</span></lable>
                </div>
            </div>
            <div class="row">
                <br>
                <div class="col-sm-6">
                    <i class='fas fa-user-graduate' style='font-size:24px;margin-left: 5px;'></i><input type="text" class="box" name="10thmark">
                </div>
                <div class="col-sm-6">
                    <i class='fas fa-user-graduate' style='font-size:24px;margin-left: 5px;'></i><input type="text" class="box" name="12thmark">
                </div>
            </div>
            
            <div class="row">
                <br>
                <div class="col-sm-6">
                      <lable>Graduation marks<span style="color:red">*</span></lable>
                </div>
                 <div class="col-sm-6">
                       <lable>Post Graduation marks</lable>
                 </div>
            </div>
            
            <div class="row">
                <br>
                <div class="col-sm-6">
                    <i class='fas fa-user-graduate' style='font-size:24px;margin-left: 5px;'></i><input type="text" class="box" name="gmark">
                </div>
                 <div class="col-sm-6">
                     <i class='fas fa-user-graduate' style='font-size:24px;margin-left: 5px;'></i><input type="text" class="box" name="pgmark">
                 </div>
            </div>
            
            <div class="row">
                <br><br>
                <div class="col-sm-6">
                     <lable>Mobile number<span style="color:red">*</span></lable>
                </div>
                <div class="col-sm-6">
                    <lable>Email-Id<span style="color:red">*</span></lable>
                </div>
            </div>
            
            <div class="row">
                <br>
                <div class="col-sm-6">
                    <i class="	fa fa-mobile"style="font-size:20px;margin-left:5px;"></i><input type="text" class="box" name="mnumber">
                </div>
                 <div class="col-sm-6">
                       <i class="fa fa-envelope" style="font-size:20px"></i><input type="text" class="box" name="email">
                 </div>
            </div>
            
           
            
            <br><br>
            
            <input type="submit" class="button" name="submit">
            
            
                
            
       
            
        </div>
    
        </form>
    </body>
    
    
</html>