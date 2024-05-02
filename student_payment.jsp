<%-- 
    Document   : student_payment
    Created on : 4 Feb, 2022, 1:08:58 PM
    Author     : Chandrashekhar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Form</title>
        
    </head>
    
    <body>
        
        <form method="post" action="student_payment">
            
        <style>
             .body
            {
            }
            
            .paybox
            {
                height: 800px;
                width: 800px;
                background-color: wheat;
                margin-left: 200px;
                margin-top: 50px;
            }
            
            .small
            {
                height: 60px;
                width: 800px;
                background-color: graytext;
            }
            
            h1
            {
                
                margin-top: 2px;
                font-size: 50px;
            }
            
            h3
            {
                margin-left: 80px;
                font-size: 20px;
                color: black;
            }
            
            .textbox
            {
                margin-left: 250px;
                margin-top: 20px;
                height: 40px;
                width: 250px;
                border-radius: 9px;
                border-bottom-color: black;
                font-size: 15px;
            }
            
            .button
            {
                margin-left: 300px;
                border-radius: 10px;
                height: 50px;
                margin-top: 20px;
                width: 150px;
            }
            
        </style>
        
        <div class="body">
            
            <div class="paybox">
               
                <div class="small">
                    
                    <h1 align="center">Total Payment</h1>
                </div>
                
                <h3>Student Details :</h3>
                
                <input class="textbox" type="text" name="Name" placeholder="Enter Name"><br>
                <input class="textbox" type="text" name="E-mail" placeholder="Enter E-mail"><br>
                <input class="textbox" type="text" name="Contact_number" placeholder="Enter Contact_number"><br><br>

                <h3>Total Pass Fee :</h3>
                
                <input class="textbox" type="text" name="Amount" placeholder="Amount"><br><br>
                
                <h3>Select Payment Method :</h3><br>
                
                <input class="button" type="submit" name="Google Pay" value="Google Pay"><br>
                <input class="button" type="submit" name="Phone Pay" value="Phone Pay"><br>
                <input class="button" type="submit" name="Card" value="Card"><br>


                
            </div>
            
        </div>
        
        </form>
        
    </body>
    
</html>
