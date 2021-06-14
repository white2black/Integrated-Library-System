<%-- 
    Document   : issueBook
    Created on : 14-Jun-2020, 4:47:55 pm
    Author     : Administrator
--%>

<%-- 
    Document   : admin_home
    Created on : Jun 15, 2020, 7:55:16 AM
    Author     : Admin1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="database.UseDB"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Book"%>
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
    <nav class="blue">
        <div class="nav wrapper">
            <div class="container" style="margin-top: 8px; margin-left: 0px; width: 30%;">
                <a href="" class="button-collapse show-on-large" data-activates="sidenav"><i class="material-icons"
                        style="size: 20px;">person_pin</i></a>
            </div>
        </div>
        <ul class="right">
            <li><a href=""><i class="material-icons">refresh</i></a></li>
            <li><a href=""><i class="material-icons">more_vert</i></a></li>
        </ul>
        </div>
    </nav>
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
            <a href="" class="tooltipped" data-position="top" data-tooltip=""><i
                    class="material-icons blue-text">person</i>Admin_name
            </a>
        </li>

        <li>
            <a href=""><i class="material-icons blue-text">email</i>email </a>
        </li>
        <li>
            <a href=""><i class="material-icons blue-text">add_box</i>AddBooks </a>
        </li>
        <li>
            <a href=""><i class="material-icons blue-text">rate_review</i>See Books
            </a>
        </li>
        <li>
            <a href=""><i class="material-icons blue-text">people</i>Show Users </a>
        </li>
        <li>
            <a href=""><i class="material-icons blue-text">delete_forever</i>DeleteBook
            </a>
        </li>
        <li>
            <a href=""><i class="material-icons blue-text">clear</i>DeleteUser</a>
        </li>
        <div class="divider"></div>

        <li>
            <a href=""><i class="material-icons blue-text">help</i>Help </a>
        </li>
        <li>
            <a href=""><i class="material-icons blue-text">exit_to_app</i>Logout
            </a>
        </li>
    </ul>

    <!--SideNav Finished-->
    
   
    <div class="content">
        <div class="row">
            <div class="col s12 l4 m4">
                <c:forEach var="book" items="${books}">
                    <div class="card">
                        <div class="card-image">
                            <img src='image_folder/book.jpg' />
                            <span class="card-title">Card Title</span>
                        </div>
                        <div class="card-content">
                            <p>
                                <tr>
                                    <a href=""><i class="material-icons blue-text">Person</i>${book.bookId}</a>
                                    <td>${book.bookName}</td>
                                    <td>${book.category}</td>
                                    <td>${book.author}</td>
                                    <td>${book.publisher}</td>
                                    <td>${book.description}</td>
                                    <td><c:choose>
                                        <c:when test="${book.available eq ''}">Available</c:when>
                                        <c:otherwise>${book.available}</c:otherwise>
                                        </c:choose> 
                                    </td>
                                </tr>  
                            </p>
                        </div>
                    </div>
                </c:forEach>
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
    <script type="text/javascript"></script>
</body>

</html>



    
    
    
    <!--<a href=”<!--c:url value=’/inputComments.jsp’ />”>Click here</a>-->
        
