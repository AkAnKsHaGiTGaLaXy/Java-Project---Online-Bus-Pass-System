create database Online_Bus_Pass_System;
use Online_Bus_Pass_System;


  drop table student_signup;
  
  create table student_signup
( 
	id int primary key auto_increment,
    student_id nvarchar(200),
    student_name nvarchar (300),
    contact bigInt (10),
    address nvarchar (200),
    dob nvarchar(100),
    email_id nvarchar (100),
    pass nvarchar (100),
    cpass nvarchar (100),
    gender nvarchar(100)
);



drop table student_apply_pass;

create table student_apply_pass
(
	 id int primary key auto_increment,
     student_id int(10),
     student_name nvarchar(300),
     period nvarchar(45),
     college_name nvarchar (100),
     adhar_number nvarchar (50),
     admission_reciept nvarchar(100),
     bonafide_number nvarchar(100),
     route nvarchar(100),
     photo nvarchar(500),
     status nvarchar(50),
     passno nvarchar(100)
);

drop table student_apply_bonafide;

create table student_apply_bonafide
(
	 id int primary key auto_increment,
     student_id int(10),
     student_name nvarchar(300),
     college_name nvarchar (100), 
     admission_reciept nvarchar(100),
     photo nvarchar(500),
     status nvarchar(50),
     bonafide_number nvarchar(100)
);

 

drop table college_signup;
create table college_signup
(
	  id int primary key auto_increment,
	  fname nvarchar (100),
      email nvarchar(100),
      contact bigint (100),
      uid nvarchar (100),
      pass nvarchar(100),
      cpass nvarchar(100)
);


drop table admin_signup;
create table admin_signup
(
	  id int primary key auto_increment,
	  fname nvarchar (100),
      email nvarchar(100),
      contact bigint (100),
      uid nvarchar (100),
      pass nvarchar(100),
      cpass nvarchar(100)
);

drop table college_bonafide_details;

create table college_bonafide_details
(
	  id int primary key auto_increment,
      student_id int (10),
      student_name nvarchar (100),
      receipt_no bigint (10)
);

 create table student_login        
 (
		emailmob nvarchar(100),
        pass nvarchar(100)
 );     
      
  create table admin_login  
  (
		uid nvarchar(100),
        pass nvarchar(100)
  );
  
  drop table admin_pass_request;
  
  create table admin_pass_request
  (
		id int primary key auto_increment,
        student_id int(10),
        stdnm nvarchar(100),
        clgnm nvarchar(100),
        pass nvarchar(100),
        route nvarchar(100)
  );
    
    drop table college_signup;
    
	create table college_signup
    (
		id int primary key auto_increment,
        college_id int(10),
		cname nvarchar(100),
        email nvarchar(100),
        contact nvarchar(100),
        cid nvarchar(100),
        pass nvarchar(100),
        cpass nvarchar(100)
    );




    