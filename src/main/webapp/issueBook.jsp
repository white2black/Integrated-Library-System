<%-- 
    Document   : newjsp
    Created on : 12-Jun-2020, 9:24:48 pm
    Author     : Administrator
--%>

<%@page import="database.UseDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
       <%@page import="java.io.PrintWriter"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page import="database.UseDB"%>
        <%@page import="java.util.ArrayList"%>
        <%@page import="beans.Book"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <!--Import materialize.css-->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" />

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cl oudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    </head>
    <body>

        <table class="highlight">    
        <form action="AfterIssueBook" method="POST">
       <thead>
          <tr>
              <th>BookId</th>
              <th>BookName</th>
              <th>Category</th>
              <th>Author</th>
              <th>Publisher</th>
          </tr>
        </thead>    
        <tbody>
            <c:forEach var="book" items="${books}">
          <tr>
            <td>${book.bookId}</td>
                <td>${book.bookName}</td>
                <td>${book.category}</td>
                <td>${book.author}</td>
                <td>${book.publisher}</td>
                <td><label>
                    <input type="checkbox" name="books" value="${book.bookId}"/>
                    <span>Red</span>
                    </label></td>
          </tr>
          
            </c:forEach>
        </tbody>
        <input type="submit" value="submit" class="btn"/>
        </form>
    </table>
                   
    
        
        
        
        
        
