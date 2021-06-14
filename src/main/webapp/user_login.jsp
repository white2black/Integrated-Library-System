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
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<!--        <link rel="stylesheet" type="text/css" href="style_user.css">-->
        <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="cont">
            <div class="form sign-in"> 
                </br>
                <h1>Welcome Library Web System</h1><br>
                <h2>Sign In For USERS</h2><br>

                <form id="loginform" action="${pageContext.request.contextPath}/UserLoginServlet" method="POST" onsubmit="return(login())" >
                    <label>
                        <span>Username</span>
                        <input type="text" id="uname_l" name="uname" form="loginform" oninput="login()">
                    </label>
                    <label>
                        <span>Password</span>
                        <input type="password" id="password_l" name="password" form="loginform" oninput="login()">
                    </label>
                    <label>
                        <div id="error_message_login"></div>
                    </label>
                    <button class="submit" type="submit" onsubmit="return login()">Log In</button>
                    </form>
                    <form action="${pageContext.request.contextPath}/admin_login.jsp" onsubmit="return admin_login()" id="adminlogin">
<!--                    <a href="${pageContext.request.contextPath}/admin_login.jsp">-->
                        <button type="submit" class="submit" form="adminlogin" >ADMIN Login</button>
<!--                    </a>-->
                    </form>
                
                <p class="forgot-pass">Forgot Password ?</p>

               
            </div>

            <div class="sub-cont">
                <div class="img">
                    <div class="img-text m-up">
                        <br>
                        <h2>New Registration?</h2>
                        <h3>Sign up for Users who have not Registered with Library System</h3>
                    </div>
                    <div class="img-text m-in">
                        <br>
                        <h2>Already Registered?</h2>
                        <h3>Login if your Library Account is Exists </h3>
                    </div>
                    <div class="img-btn">
                        <b>
                            <span class="m-up">Register</span>
                            <span class="m-in">Log In</span>
                        </b>
                    </div>
                </div>

<!--${pageContext.request.contextPath}-->


                <form id="registerform" action="${pageContext.request.contextPath}/Registration" method="POST" onsubmit="return(register())">
                    <div class="form sign-up" >
                        <br>
                        <h1>Welcome Library Web System</h1><br>
                        <h2>Sign Up for USERS</h2><br>
                        <label>
                            <span>First Name</span>
                            <input type="text" name="fname" id="fname" form="registerform" oninput="register()">
                        </label>
                        <label>
                            <span>Last Name</span>
                            <input type="text" name="lname" id="lname" form="registerform" oninput="register()">
                        </label>
                        <label>
                            <span>Username</span>
                            <input type="text" name="uname" id="uname" form="registerform" oninput="register()">
                        </label>
                        <label>
                            <span>Email</span>
                            <input type="email" name="email" id="email" form="registerform" oninput="register()">
                        </label>
<!--                        <label>
                            <span>Mobile</span>
                            <input type="tel" name="mobile" id="mobile" form="registerform" oninput="register()">
                        </label>-->
                        <label>
                            <span>Password</span>
                            <input type="password" name="password" id="pass" form="registerform" oninput="register()">
                        </label>
                        <label>
                            <div id="error_message"></div>
                        </label>
                        <button type="submit" class="submit" onsubmit="return register()">Register</button>

                    </div>
                </form>
            </div>
        </div>
<!--        <script type="text/javascript" src="/js/script_user.js"></script>-->
    </body>
</html>

<script>
                            document.querySelector('.img-btn').addEventListener('click', function ()
                            {
                                document.querySelector('.cont').classList.toggle('s-signup')
                            }
                            );

                            function register()
                            {
                                var str = "Error : ";

                                var fnameF = document.getElementById("fname").value;
                                var lnameF = document.getElementById("lname").value;
                                var unameF = document.getElementById("uname").value;
                                var emailF = document.getElementById("email").value;
//                                var mobile = document.getElementById("mobile").value;
                                var pass = document.getElementById("pass").value;

                                var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

                                var text;

                                var error = document.getElementById("error_message");

                                error.style.padding = "7px";

                                if (fnameF.length < 3)
                                {
                                    text = "Please Enter Valid First Name";
                                    error.innerHTML = text;
                                    return false;
                                }
                                if (lnameF.length < 3)
                                {
                                    text = "Please Enter Valid Last Name";
                                    error.innerHTML = text;
                                    return false;
                                }

                                if (unameF.length < 3)
                                {
                                    text = "Please Enter Valid Username Name";
                                    error.innerHTML = text;
                                    return false;
                                }

                                if (!(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(emailF)))
                                {
                                    text = "Please Enter Valid Email";
                                    error.innerHTML = text;
                                    return false;
                                }

//                                if (isNaN(mobile) || mobile.length != 10)
//                                {
//                                    text = "Please Enter 10-digit Mobile";
//                                    error.innerHTML = text;
//                                    return false;
//                                }

                                if (!(/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/.test(pass)))
                                {
                                    text = "Password with 7-15 character with 1 numeric 1 special";
                                    error.innerHTML = text;
                                    return false;
                                } else
                                {
                                    error.style.padding = "0px";
                                    error.innerHTML = "";
                                    return true;
                                }


                            }

                            function login()
                            {
                                var unameF = document.getElementById("uname_l").value;
                                var password = document.getElementById("password_l").value;

                                var error = document.getElementById("error_message_login");

                                error.style.padding = "7px";

                                if (unameF.length < 3)
                                {
                                    error.innerHTML = "Message Alert : Please Enter Valid Username Name"
                                    return false;
                                }
                                if (password.length < 3)
                                {
                                    error.innerHTML = "Message Alert : Please Enter Valid Password";
                                    return false;
                                } else
                                {
                                    error.style.padding = "0px";
                                    error.innerHTML = "";
                                    return true;
                                }
                            }
                            
                            function admin_login()
                            {
                                if (confirm("Proceed ONLY when You are ADMIN")) 
                                {
                                    return true;
                                } else 
                                {
                                    return false;
                                }
 
                            }

</script>

<style >


    *, *:before, *:after{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Nunito', sans-serif;
    }

    body{
        width: 100%;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: -webkit-linear-gradient(left, #df1447, #b224ef);
        font-family: 'Nunito', sans-serif;
    }

    input, button{
        border:none;
        outline: none;
        background: none;
    }

    .cont{
        overflow: hidden;
        position: absolute;
        width: 900px;
        height: 750px;
        background: #fff;
        box-shadow: 0 19px 38px rgba(0, 0, 0, 0.30), 0 15px 12px rgba(0, 0, 0, 0.22);
    }

    .form{
        position: relative;
        width: 640px;
        height: 100%;
        padding: 50px 30px;
        -webkit-transition:-webkit-transform 1.2s ease-in-out;
        transition: -webkit-transform 1.2s ease-in-out;
        transition: transform 1.2s ease-in-out;
        transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;
    }

    h2{
        width: 100%;
        font-size: 30px;
        text-align: center;
        color: #b3df14;
    }

    h1{
        width: 100%;
        margin-top: 35px;
        font-size: 30px;
        text-align: center;
        color: #df1447;
    }

    h3{
        width: 100%;

        color: #3ef8ef;
    }


    label{
        display: block;
        width: 260px;
        margin: 5px auto 0;
        text-align: center;
    }

    label span{
        font-size: 14px;
        font-weight: 500;
        color: #505f75;
        text-transform: uppercase;
    }

    input{
        display: block;
        width: 100%;
        margin-top: 5px;
        font-size: 16px;
        padding-bottom: 5px;
        border-bottom: 1px solid rgba(109, 93, 93, 0.4);
        text-align: center;
        font-family: 'Nunito', sans-serif; 
    }

    button{
        display: block;
        margin: 0 auto;
        width: 260px;
        height: 36px;
        border-radius: 30px;
        color: #fff;
        font-size: 15px;
        cursor: pointer;
    }

    .submit{
        margin-top: 40px;
        margin-bottom: 30px;
        text-transform: uppercase;
        font-weight: 600;
        font-family: 'Nunito', sans-serif;
        background: -webkit-linear-gradient(left, #7579ff, #b224ef);
    }

    .submit:hover{
        background: -webkit-linear-gradient(left, #b224ef, #7579ff);
    }

    .forgot-pass{
        margin-top: 15px;
        text-align: center;
        font-size: 14px;
        font-weight: 600;
        color: #0c0101;
        cursor: pointer;
    }

    .forgot-pass:hover{
        color: red;
    }


    .sub-cont{
        overflow: hidden;
        position: absolute;
        left: 640px;
        top: 0;
        width: 900px;
        height: 100%;
        padding-left: 260px;
        background: #fff;
        -webkit-transition: -webkit-transform 1.2s ease-in-out;
        transition: -webkit-transform 1.2s ease-in-out;
        transition: transform 1.2s ease-in-out;
    }

    .cont.s-signup .sub-cont{
        -webkit-transform:translate3d(-640px, 0, 0);
        transform:translate3d(-640px, 0, 0);
    }

    .img{
        overflow: hidden;
        z-index: 2;
        position: absolute;
        left: 0;
        top: 0;
        width: 260px;
        height: 100%;
        padding-top: 360px;
    }

    .img:before{
        content: '';
        position: absolute;
        right: 0;
        top: 0;
        width: 900px;
        height: 100%;
        background-image: url(image_folder/bg_user.jpg);
        background-size: cover;
        transition: -webkit-transform 1.2s ease-in-out;
        transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;
    }

    .img:after{
        content: '';
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background: rgba(0,0,0,0.3);
    }

    .cont.s-signup .img:before{
        -webkit-transform:translate3d(640px, 0, 0);
        transform:translate3d(640px, 0, 0);
    }

    .img-text{
        z-index: 2;
        position: absolute;
        left: 0;
        top: 50px;
        width: 100%;
        padding: 0 20px;
        text-align: center;
        color: #fff;
        -webkit-transition:-webkit-transform 1.2s ease-in-out;
        transition: -webkit-transform 1.2s ease-in-out;
        transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;
    }

    .img-text h2{
        margin-bottom: 10px;
        margin-top: 35px;
        color: rgb(227, 247, 210);
        font-weight: normal;
        font-weight: 900;
    }

    .img-text p{
        font-size: 14px;
        line-height: 1.5;
        font-weight: 900;
    }

    .cont.s-signup .img-text.m-up{
        -webkit-transform:translateX(520px);
        transform:translateX(520px);
    }

    .img-text.m-in{
        -webkit-transform:translateX(-520px);
        transform:translateX(-520px);
    }

    .cont.s-signup .img-text.m-in{
        -webkit-transform:translateX(0);
        transform:translateX(0);
    }


    .sign-in{
        padding-top: 65px;
        -webkit-transition-timing-function:ease-out;
        transition-timing-function:ease-out;
    }

    .cont.s-signup .sign-in{
        -webkit-transition-timing-function:ease-in-out;
        transition-timing-function:ease-in-out;
        -webkit-transition-duration:1.2s;
        transition-duration:1.2s; 
        -webkit-transform:translate3d(640px, 0, 0);
        transform:translate3d(640px, 0, 0);
    }

    .img-btn{
        overflow: hidden;
        z-index: 2;
        position: relative;
        width: 100px;
        height: 36px;
        margin: 0 auto;
        background: transparent;
        color: #fff;
        text-transform: uppercase;
        font-size: 15px;
        cursor: pointer;
        font-weight: 900;
    }

    .img-btn:after{
        content: '';
        z-index: 2;
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        border: 2px solid #fff;
        border-radius: 30px;
    }

    .img-btn span{
        position: absolute;
        left: 0;
        top: 0;
        display: -webkit-box;
        display: flex;
        -webkit-box-pack:center;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: 100%;
        -webkit-transition:-webkit-transform 1.2s;
        transition: -webkit-transform 1.2s;
        transition: transform 1.2s;
        transition: transform 1.2s, -webkit-transform 1.2s;;
    }

    .img-btn span.m-in{
        -webkit-transform:translateY(-72px);
        transform:translateY(-72px);
    }

    .cont.s-signup .img-btn span.m-in{
        -webkit-transform:translateY(0);
        transform:translateY(0);
    }

    .cont.s-signup .img-btn span.m-up{
        -webkit-transform:translateY(72px);
        transform:translateY(72px);
    }

    .sign-up{
        -webkit-transform:translate3d(-900px, 0, 0);
        transform:translate3d(-900px, 0, 0);
    }

    .cont.s-signup .sign-up{
        -webkit-transform:translate3d(0, 0, 0);
        transform:translate3d(0, 0, 0);
    }

    #error_message
    {
        margin-top: 15px;
        margin-bottom: 0px;
        padding: 0px;
        background: #fe8b8e;
        text-align:center;
        font-size:14px;
        transition: all 0.5 ease;
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
