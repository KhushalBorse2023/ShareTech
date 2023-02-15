<%-- 
    Document   : index
    Created on : 24-Jan-2023, 11:31:12 pm
    Author     : khush
--%>

<%@page import="com.sharetech.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <%--css--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title>
    </head>
    <body class="Primary-Background">
        <%--Include NavBar--%>
        <%@include file="Normal_navbar.jsp"%>

        <%--Banner--%>
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron Secondary-Background banner-background">
                <div class="container">
                    <h3 class="display-3">Welcome Friends!</h3>
                    <p>As we know, to communicate with a person, we need a specific language, similarly to communicate with computers, programmers also need a language is called Programming language.</p>
                    <p>
                        A programming language is a computer language that is used by programmers (developers) to communicate with computers. It is a set of instructions written in any specific language ( C, C++, Java, Python) to perform a specific task.
                        A programming language is mainly used to develop desktop applications, websites, and mobile applications.
                    </p>
                    <a href="Register.jsp" class="btn Primary-Background btn-lg btn-outline-light"> Start Free!</a>
                    <a  href="Login.jsp" class="btn Primary-Background btn-lg btn-outline-light"> Login</a>

                </div>
            </div>
            <br>


        </div>

        <%--Cards--%>
        <div class="container">
            <div class="row mb-2">
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn Primary-Background text-white">Read More</a>
                        </div>
                    </div>   
                </div>
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn Primary-Background text-white">Read More</a>
                        </div>
                    </div>   
                </div>
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn Primary-Background text-white">Read More</a>
                        </div>
                    </div>   
                </div>
            </div>


            <div class="row">
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn Primary-Background text-white">Read More</a>
                        </div>
                    </div>   
                </div>
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn Primary-Background text-white">Read More</a>
                        </div>
                    </div>   
                </div>
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn Primary-Background text-white">Read More</a>
                        </div>
                    </div>   
                </div>
            </div>
        </div>







        <%--Javascript--%>
        <script
            src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>

    </body>
</html>
