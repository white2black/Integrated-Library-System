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
            <a href="addBook.jsp"><i class="material-icons blue-text">add_box</i>AddBooks </a>
        </li>
        <li>

            <a href="AdminHomeBooks"><i class="material-icons blue-text">rate_review</i>See Books



            </a>
        </li>
        <li>
            <a href="ShowAllUsers"><i class="material-icons blue-text">people</i>Show Users </a>
        </li>
        <li>
            <a href="deleteBook.jsp"><i class="material-icons blue-text">delete_forever</i>DeleteBook
            </a>
        </li>
        <li>
            <a href="deleteUser.jsp"><i class="material-icons blue-text">clear</i>DeleteUser</a>
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


    <div class="content">
        <div class="row" >
        <div class="col s12 m6">
            <div class="card blue-grey darken-1">
                <div class="card-content blue-text">
                    <p>HTML (Hypertext Markup Language) is a web markup language that allows you to create web pages.
                        While HTML is an easy to
                        learn markup language, it does contain over a hundred different tags that can be learned.

                        Like other markup languages, HTML consists of tags that let the browser know what action to
                        perform. For example,
                        <b>bold text</b> tells the browser the text in the <b> and </b> is bold text. Being a markup
                        language, HTML does not
                        need to be compiled and required no special editor. You can write HTML in any text editor or use
                        an HTML editor designed
                        for creating web pages.

                        Also, because it's your browser interpreting the HTML, you can view all HTML pages on your
                        computer without needing a
                        server or uploading them to the Internet. Once familiarized with HTML tags, see where to start
                        in HTML and web design
                        for help with creating a web page and posting it online.</p>
                    <div class="card-action">
                         
                        <a href="AdminHomeBooks" class="btn">Home</a>

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




