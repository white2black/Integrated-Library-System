<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="beans.*" %>
<%@ page import="database.*" %>

<%@ page import="validate.*" %>
<%@ page import="servlets.*" %>
<%@ page import="filters.*" %>


<!DOCTYPE html>
<html>
<head>
	<title>Library Management System</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <script src="https://kit.fontawesome.com/a81368914c.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<img class="wave" src="image_folder/wave_admin.png">
	<div class="container">
		<div class="img">
			<img src="image_folder/bg_admin.svg">
		</div>
		<div class="login-content">
			<!-- <h2 class="title">Welcome</h2> -->
			<form  action="${pageContext.request.contextPath}/AdminLoginServlet" id="adminloginform"  method="POST" onsubmit="return button()">
				<img src="image_folder/admin_admin.jpg">
				<h2 class="title">Welcome Library Web System</h2>
				<h3 class="title">ADMIN LOGIN</h3>				
									
				
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Username</h5>
           		   		<input type="text" class="input" id="uname" name="uname" form="adminloginform" >
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Password</h5>
           		    	<input type="password" class="input" name="password" id="password" form="adminloginform">
            	   </div>
            	</div>
            	<!-- <a href="#">Forgot Password?</a> -->
                <div id="error_message_login"></div>
				<input type="submit" class="btn" id="adminSubmit" value="Login" onclick="button()" >
                                
                    
				<a href="user_login.jsp" >
					<input type="button" class="btn" value="User Login" >
				</a>
                    </form>
                
        </div>
    </div>

</body>
</html>




<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"> </script>
<script>
       
const inputs = document.querySelectorAll(".input");


function addcl(){
	let parent = this.parentNode.parentNode;
	parent.classList.add("focus");
}

function remcl(){
	let parent = this.parentNode.parentNode;
	if(this.value === ""){
		parent.classList.remove("focus");
	}
}


inputs.forEach(input => {
	input.addEventListener("focus", addcl);
	input.addEventListener("blur", remcl);
});

var x = document.getElementById("login");
var y = document.getElementById("register");
var z = document.getElementById("btn1");

function register()
{
	x.style.left = "-400px";
	y.style.left = "50px";
	z.style.left = "110px";
}

//function login()
//{
//	x.style.left = "50px";
//	y.style.left = "450px";
//	z.style.left = "110px";
//}
//
//
//function admin_login()
//{
//    var unameF = document.getElementById("uname").value;
//    var password = document.getElementById("password").value;
//
//    var error = document.getElementById("error_message_login");
//
//    error.style.padding = "7px";
//
//    if (unameF.length < 3)
//    {
//        error.innerHTML = "Message Alert : Please Enter Valid Username Name"
//        return false;
//    }
//    if (password.length < 3)
//    {
//        error.innerHTML = "Message Alert : Please Enter Valid Password";
//        eturn false;
//    } 
//    else
//    {
//        error.style.padding = "0px";
//        error.innerHTML = "";
//        return true;
//    }
//}



        
function button()
{
        var uname = document.getElementById("uname").value;
        var password = document.getElementById("password").value;
        
        if( uname.length < 3 || password.length < 3)
        {
            document.getElementById("error_message_login").style.backgroundColor ='#ffcccb';
            $.ajax({url: "admin_message.txt", success: function(result){
            $("#error_message_login").html(result);
            }});
        
            return false;
        }
        else
        {
            document.getElementById("error_message_login").style.backgroundColor = '#90EE90';
            $.ajax({url: "admin_message_positive.txt", success: function(result){
            $("#error_message_login").html(result);
            }});
            
            return true;
        }
//        else
//        $.ajax({
//            type : "POST",
//            url : "${pageContext.request.contextPath}/AdminLogin",           
//            data : {uname:uname,password:password},
//            
//            success : function(data){
//                alert("success");
//            },
//            error : function(e){
//                alert("fail");
//            }
//        });
        
    
}

//function loadDoc() {
//    
//  var uname = $('uname').val();
//  var password = $('password').val;
//  
//  if( uname.length > 2 && password > 2)
//  {
//  var xhttp = new XMLHttpRequest();
//  xhttp.onreadystatechange = function() {
//    if (this.readyState == 4 && this.status == 200) {
//      document.getElementById("demo").innerHTML = this.responseText;
//    }
//  };
//  xhttp.open("POST", "/AdminLogin", true);
//  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
//  xhttp.send("uname="+uname+"&password="+password);
//  
//   }
//}


	
</script>





<style>


*{
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body{
    font-family: 'Poppins', sans-serif;
    overflow: hidden;
}

.wave{
	position: fixed;
	bottom: 0;
	left: 0;
	height: 100%;
	z-index: -1;
}

.container{
    width: 100vw;
    height: 100vh;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-gap :7rem;
    padding: 0 2rem;
}

.img{
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

.login-content{
	display: flex;
	justify-content: flex-start;
	align-items: center;
	text-align: center;
	overflow: hidden;
}

.img img{
	width: 500px;
}

form{
	width: 360px;
}

.login-content img{
    height: 100px;
}

.login-content h2{
	margin: 10px 0;
	color: #333;
	text-transform: uppercase;
	font-size: 2.0;
	color:#df1447;
}

.login-content h3{
	margin: 10px 0;
	color: #333;
	text-transform: uppercase;
	font-size: 2.0;
	color: #b3df14;
}


.login-content .input-div{
	position: relative;
    display: grid;
    grid-template-columns: 7% 93%;
    margin: 25px 0;
    padding: 5px 0;
    border-bottom: 2px solid #d9d9d9;
}

.login-content .input-div.one{
	margin-top: 0;
}

.i{
	color: #d9d9d9;
	display: flex;
	justify-content: center;
	align-items: center;
}

.i i{
	transition: .3s;
}

.input-div > div{
    position: relative;
	height: 45px;
}

.input-div > div > h5{
	position: absolute;
	left: 10px;
	top: 50%;
	transform: translateY(-50%);
	color: #999;
	font-size: 18px;
	transition: .3s;
}

.input-div:before, .input-div:after{
	content: '';
	position: absolute;
	bottom: -2px;
	width: 0%;
	height: 2px;
	background-color: #38d39f;
	transition: .4s;
}

.input-div:before{
	right: 50%;
}

.input-div:after{
	left: 50%;
}

.input-div.focus:before, .input-div.focus:after{
	width: 50%;
}

.input-div.focus > div > h5{
	top: -5px;
	font-size: 15px;
}

.input-div.focus > .i > i{
	color: #7182cf;       /* here  #38d39f */
}

.input-div > div > input{
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	border: none;
	outline: none;
	background: none;
	padding: 0.5rem 0.7rem;
	font-size: 1.2rem;
	color: #555;
	font-family: 'poppins', sans-serif;
}

.input-div.pass{
	margin-bottom: 4px;
}

a{
	display: block;
	text-align: right;
	text-decoration: none;
	color: #999;
	font-size: 0.9rem;
	transition: .3s;
}

a:hover{
	color: #d33885;  /* here  #38d39f */
}

.btn{
	display: block;
	width: 100%;
	height: 50px;
	border-radius: 25px;
	outline: none;
	border: none;
	/*background-image: linear-gradient(to right, #71be32, #71be32, #71be32);   here  #38d39f/* here  #38d39f *//* here  #38d39f */
	background-size: 200%;
	background: -webkit-linear-gradient(left, #7579ff, #b224ef);
	font-size: 1.2rem;
	color: #fff;
	font-family: 'Poppins', sans-serif;
	text-transform: uppercase;
	margin: 1rem 0;
	cursor: pointer;
	transition: .5s;
}
.btn:hover{
	background-position: right;
	background: -webkit-linear-gradient(left, #b224ef, #7579ff);
}


@media screen and (max-width: 1050px){
	.container{
		grid-gap: 5rem;
	}
}

@media screen and (max-width: 1000px){
	form{
		width: 290px;
	}

	.login-content h2{
        font-size: 2.4rem;
        margin: 8px 0;
	}

	.img img{
		width: 400px;
	}
}

@media screen and (max-width: 900px){
	.container{
		grid-template-columns: 1fr;
	}

	.img{
		display: none;
	}

	.wave{
		display: none;
	}

	.login-content{
		justify-content: center;
	}
}

/* here */ /* here */ /* here */ /* here */ 

.dropdown {
	position: relative;
	display: inline-block;
  }
  
  .dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	z-index: 1;
  }
  
  .dropdown:hover .dropdown-content {
	display: block;
  }
  
  .desc {
	padding: 15px;
	text-align: center;
  }

.hero
{
	height: 100%;
	width: 100%;
	background-position: right;
	background-size: cover;
	position: absolute;
}

.form-box
{
	width: 380px;
	height: 480;
	position: relative;
	margin: 6% auto;
	background: #fff;
	padding: 5px;

	/* display: flex;
	justify-content: flex-start;
	align-items: center;
	text-align: center; */
}

.button-box
{
	width:220px;
	margin: 35px auto;
	position: relative;
	box-shadow: 0 0 20px 9px #ff6141;
	border-radius: 30px;
}

.toggle-btn
{
	padding: 10px 30px;
	cursor: pointer;
	background: transparent;
	border: 0;
	outline: none;
	position: relative;
}

#btn1
{
	top:0;
	left:0;
	position: absolute;
	width: 110px;
	height: 100%;
	background: linear-gradient(to right, #ff105f, #ffad06);
	border-radius: 30px;
	transition: .5s;

}

.input-group
{
	top: 180px;
	position: absolute;
	width: 280px;
	transition: .5s;
	
}

#login
{
	left: 2000px;
}

#register
{
	left: 400px;
	bottom: 100px;
}

 #error_message_login
    {
        margin-top: 15px;
        margin-bottom: 0px;
        padding: 0px;
        background: #fe8b8e;
        text-align:center;
        font-size:14px;
        transition: all 0.5 ease;
    }


</style>
