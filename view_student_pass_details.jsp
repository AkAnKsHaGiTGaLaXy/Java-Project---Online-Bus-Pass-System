
    Document   : student_pass_details
    Created on : 16 Feb, 2022, 4:31:58 PM
    Author     : Chandrashekhar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view_student_pass_details</title>
        
        <link rel="stylsheet" href="bootstrap.css">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        
        <style>
            
            body
            {
                background-color: cornsilk;
            }
            
            h1
            {
                margin-left: 210px;
                font-size: 50px;
                color: #2b542c;
            }
            
            .maindiv
            {
                height: 800px;
                width: 900px;
                background-color:black;
             
                margin-left: 500px;
                
            }
            
            
              .box
            {
                 height: 30px;
                 width:400px;
                 border-radius: 5px;
                 border: none;
                 margin-left: 10px;
             }
            
            
            a
            {
                color: wheat;
                font-size: 20px;
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
            
            .button
           {
                height: 30px;
                width:150px;
                border-radius: 5px;
                font-family: Arial black;
                margin-left: 200px;
                background-color: #c9302c;
                margin-top: 50px;
           }
           
            .button1
           {
                height: 30px;
                width:150px;
                border-radius: 5px;
                font-family: Arial black;
                margin-left: 600px;
                background-color: #c9302c;
            
           }
        
        
        </style>
        
        <div class="body">
            
            <h1>Pass Details Of Student.....</h1>
            
            <div class="maindiv">
                <div class="col-sm-6">
                 <div class="row">
                <br>
                <div class="col-sm-6">
                    <lable>Student Name<span style="color:wheat">*</span></lable>
                    <br></div></div>
                    
                    <div class="row">
                <br>
                <div class="col-sm-6">
                    <i class='fas fa-user-alt' style='font-size:20px'></i><input type="type" class="box" name="fname">
                </div></div>
                
                
               
               <div class="row">
                <br>
                <div class="col-sm-6">
                    <lable>College Name<span style="color:wheat">*</span></lable>
                    <br></div></div>
                    
                    <div class="row">
                <br>
                <div class="col-sm-6">
                    <i class='fas fa-user-alt' style='font-size:20px'></i><input type="type" class="box" name="fname">
                </div></div>
                
                <div class="row">
                <br>
                <div class="col-sm-6">
                    <lable>Class<span style="color:wheat">*</span></lable>
                    <br></div></div>
                    
                    <div class="row">
                <br>
                <div class="col-sm-6">
                    <i class='fas fa-user-alt' style='font-size:20px'></i><input type="type" class="box" name="fname">
                </div></div>
                
                <div class="row">
                <br>
                <div class="col-sm-6">
                    <lable>Type Of Pass<span style="color:wheat">*</span></lable>
                    <br></div></div>
                    
                    <div class="row">
                <br>
                <div class="col-sm-6">
                    <i class='fas fa-user-alt' style='font-size:20px'></i><input type="type" class="box" name="fname">
                </div></div>
                
                <div class="row">
                <br>
                <div class="col-sm-6">
                    <lable>Bonafide Number<span style="color:wheat">*</span></lable>
                    <br></div></div>
                    
                    <div class="row">
                <br>
                <div class="col-sm-6">
                    <i class='fas fa-user-alt' style='font-size:20px'></i><input type="type" class="box" name="fname">
                </div></div>
                
                <div class="row">
                <br>
                <div class="col-sm-6">
                    <lable>Root Of Pass<span style="color:wheat">*</span></lable>
                    <br></div></div>
                    
                    <div class="row">
                <br>
                <div class="col-sm-6">
                    <i class='fas fa-user-alt' style='font-size:20px'></i><input type="type" class="box" name="fname">
                </div></div>
                    
                    <div class="row">
                    <div class="col-sm-4">
                <input type="submit" class="button1" name="submit" value="Accept">
                    </div></div>
                
                     
                </div>
                
             
                <div class="row">
                    <div class="col-sm-4">
                <input type="submit" class="button1" name="submit" value="Reject">
                    </div></div>
                
                
            </div>
        </div>
        
           
         
    </body>
</html>

    
    </body>
</html>
