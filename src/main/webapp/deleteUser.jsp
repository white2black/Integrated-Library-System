<%-- 
    Document   : admin_home
    Created on : Jun 15, 2020, 7:55:16 AM
    Author     : Admin1
--%>

<%@page import="beans.Admin"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="v" %>
<%@page session="true" %>
<%@page errorPage="" %>
<!DOCTYPE html>
<html>

<head>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />
    <link type="text/css" rel="stylesheet" href="css/main.css" />

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <style>
        header,
        main,
        footer,
        .content {
            padding-left: 300px;
        }

        @media only screen and (max-width: 992px) {

            header,
            main,
            footer,
            .content {
                padding-left: 0;
            }
        }
    </style>
</head>

<body>
    <%--<v:if test="${session!=null}">--%>
    <nav class="blue">
        <div class="nav wrapper">
            <div class="container" style="margin-top: 8px; margin-left: 0px; width: 30%;">
                <a href="" class="button-collapse show-on-large" data-activates="sidenav"><i class="material-icons"
                        style="size: 20px;">person_pin</i></a>
            </div>
        </div>
        <ul class="right">
            <li><a href="admin_home.jsp"><i class="material-icons">refresh</i></a></li>
            <li><a href=""><i class="material-icons">more_vert</i></a></li>
        </ul>
        </div>
    </nav>
        <% Admin admin=(Admin)((session.getAttribute("admin")));
                String userName=admin.getUserName().toString();
                String name=admin.getFirstName().toString()+admin.getLastName().toString();
                String email=admin.getEmail().toString();
        
                %>
    <ul class=" side-nav fixed" id="sidenav">
        <li>
            <!-- <div class="user-view"> -->
            <div class="background">
                <div class="card">
                    <div class="card-image">
                        <img src="img/admin_10.jpg" />
                    </div>
                </div>
            </div>
        </li>
        <li>
            <a href=""><i class="material-icons blue-text">verified_user</i>verified
            </a>
        </li>

        <li>
            <a href="" class="tooltipped" data-position="top" data-tooltip="<%= userName %>"><i
                    class="material-icons blue-text">person</i><%= name %>
            </a>
        </li>
        <li>
            <a href=""><i class="material-icons blue-text">email</i> <%= email %></a>
        </li>
        <li>
            <a href="AddBook"><i class="material-icons blue-text">add_box</i>AddBooks </a>
        </li>
        <li>

            <a href="AdminHomeBooks"><i class="material-icons blue-text">rate_review</i>See Books



            </a>
        </li>
        <li>
            <a href="ShowAllUsers"><i class="material-icons blue-text">people</i>Show Users </a>
        </li>
        <li>
            <a href=""><i class="material-icons blue-text">delete_forever</i>DeleteBook
            </a>
        </li>
        <li>
            <a href="DeleteUser"><i class="material-icons blue-text">clear</i>DeleteUser</a>
        </li>
        <div class="divider"></div>

        <li>
            <a href="help.jsp"><i class="material-icons blue-text">help</i>Help </a>
        </li>
        <li>
            <a href="LogOut"><i class="material-icons blue-text">exit_to_app</i>Logout
            </a>
        </li>
    </ul>

    <!--SideNav Finished-->
    
   
    <div class="content">
        <div class="row" id="show01">
            <div class="row">
        <div class="col s12 m6">
            <div class="card blue-grey darken-1">
                <div class="card-content blue-text">
                    <div class="row">
                        <form class="col s12" action="DeleteUser" method="POST">
                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">book</i>
                                    <input id="icon_prefix" type="text" class="validate" name="username">
                                    <label for="icon_prefix">UserName</label>
                                </div>
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">mode_comment</i>
                                    <input id="icon_telephone" type="tel" class="validate" name="useremail">
                                    <label for="icon_telephone">User emailid</label>
                                </div>
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">info</i>
                                    <input id="icon_telephone" type="submit" value="submit">
                                    <label for="icon_telephone">submit</label>
                                </div>
                            </div>
                            
                        </form>
                    </div>
                    
                    <div class="card-action">
                        <a href="deleteBook.jsp" class="btn">Remove More Users</a>
                        <a href="AdminHomeBooks" class="btn">Home</a>
                    </div>
                </div>
            </div>
        </div>




        </div>
    </div>
    <!-- 
    
<div class="fixed-action-btn">
  <a href="" class="btn-floating btn-large red white-text pulse tooltipped" data-tooltip="Add New Post" data-position="left"><i class="material-icons ">edit</i></a>
</div> -->

    <!-- Import jQuery before materialize.js -->
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
           
    <script>
        $(document).ready(function () {
            // Custom JS & jQuery here
            $(".button-collapse").sideNav();
        });
    </script>
    <script type="text/javascript">
        function allbooks()
        {
            console.log("it is working");
            document.getElementById("show01").innerHTML=" ";
            document.getElementById("show01").innerHTML="<h1>sdfusf</h1>";
                                
        }
        function allusers()
        {
            console.log("fnjdnjksdkf");
        }
    </script>
    <%--</v:if>--%>
    <%--<v:if test="${session==null}">--%>
        <!--%
            response.sendRedirect("InvalidAdmin.jsp");
            %-->
    <%--</v:if>--%>
</body>
</html>
