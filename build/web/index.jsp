<%-- 
    Document   : index
    Created on : 29-Jan-2023, 5:40:38 pm
    Author     : saifi
--%>

<%@page import="com.techblog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="js/myjs.js" type="text/javascript"></script>
    </head>
    <body>
        <!--navbar-->
        <%@include file="normal_navbar.jsp" %>

        <!--Banner-->
        <div class="container-fluid p-0 m-0" >
            <div class="jumbotron">
                <div class="container">
                    <h3 class="display-3">Welcome to TechBlog</h3>

                    <p>Welcome to  my TechBlog App.
                        A programming language is a way for programmers (developers) to communicate with computers. Programming languages consist of a set of rules that allows string values to be converted into various ways of generating machine code, or, in the case of visual programming languages, graphical elements.
                    </p>
                    <a href="register_page.jsp" type="button" class="btn btn-outline-dark"> <span class="fa fa-user-plus"></span> Start! its free</a>
                    <a href="login_page.jsp" type="button" class="btn btn-outline-dark"> <span class="fa fa-user-circle-o"></span>Login</a>
                </div>

            </div>

        </div>

        <!--Banner 2-->
        <div class="container-fluid p-0 m-0" >
            <div class="jumbotron">
                <div class="container">
                    <h3 class="display-5    ">Hi! This is Sahil Saifi</h3>

                    <p>
                        I am Flexible, Sociable with people, confident, team-player, and stable in
                        stressful situation, perseverant in achieving goals with good analytical and problem-solving skills.
                    </p>
                    <a href="https://linkedin.com/in/sahil-saifi-723732213" type="button" class="btn btn-outline-dark"> <span class="fa fa-linkedin"style="font-size:30px"></span> LinkedIn</a>
                    <a href="https://github.com/unstoppablesahilsaifi" type="button" class="btn btn-outline-dark"> <span class="fa fa-github" style="font-size:36px"></span>Github</a>
                </div>

            </div>

        </div>



    <marquee width="100%" direction="right" bgcolor="lightgray" height="40" scrollamount="12">
        Gmail: sahilsaifi4962@gmail.com  ,  Mobile No: 9627676718
    </marquee>  



    <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
