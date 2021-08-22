<%@page import="com.adroit.collegequera.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Object sessob = session.getAttribute("loginuser");
    User user = null;
    if(sessob==null)
    {
        response.sendRedirect("login.jsp");
    }else{
        user = (User)sessob;
        if(user.getType().equals("student"))
        {
            response.sendRedirect("studenthome.jsp");
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link
      href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900"
      rel="stylesheet"
    />

    <title>CollegeQuera - MIT Ujjain</title>
<!--
Reflux Template
https://templatemo.com/tm-531-reflux
-->
    <!-- Bootstrap core CSS -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css" />
    <link rel="stylesheet" href="assets/css/templatemo-style.css" />
    <link rel="stylesheet" href="assets/css/owl.css" />
    <link rel="stylesheet" href="assets/css/lightbox.css" />
  </head>

  <body>
    <div id="page-wraper">
      <!-- Sidebar Menu -->
      <div class="responsive-nav">
        <i class="fa fa-bars" id="menu-toggle"></i>
        <div id="menu" class="menu">
          <i class="fa fa-times" id="menu-close"></i>
          <div class="container">
            <div class="image">
              <a href="#">
            <img src="assets/images/author-image.jpg" alt="" /></a>
            </div>
            <div class="author-content">
              <h4>MIT Ujjain</h4>
              <span>College  Quera</span>
            </div>
            <nav class="main-nav" role="navigation">
              <ul class="main-menu">
                <li><a href="facultyhome.jsp">Home</a></li>                
                <li><a href="viewquestion.jsp">Student Question</a></li>
                <li><a href="profile.jsp">Profile</a></li>
                <li><a href="logout">Logout</a></li>
              </ul>
            </nav>
            <div class="copyright-text">
              <p>Copyright 2021 MIT Ujjain</p>
            </div>
          </div>
        </div>
      </div>
