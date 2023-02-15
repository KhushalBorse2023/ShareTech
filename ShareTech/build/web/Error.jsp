<%-- 
    Document   : Error
    Created on : 25-Jan-2023, 2:53:32 pm
    Author     : khush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="True" %>
<!DOCTYPE html>
<html>
    <head>
         <%--css--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry! Something Went Wrong!</title>
    </head>
    <body>
        <div class="container text-center ">
            <img src="img/404-error (1).png" alt="Insert Image!!" class="img-fluid" />
            <h3 class="display-3">Something Went Wrong......</h3>
            <%--<%= exception %>--%>
            <a  href="index.jsp" class="btn Primary-Background btn-lg text-white mt-3">Home</a>
        </div>
    </body>
</html>
