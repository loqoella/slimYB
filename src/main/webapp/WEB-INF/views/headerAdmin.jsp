<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- jquery cdn -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
	<!-- bootstrap cdn -->
 	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
 	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 	<title>${title}</title>
</head>
<body class="d-flex flex-column h-100">
	<header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	  <a class="navbar-brand" href="#">SlimYB</a>
	  <!-- toggler for mobile devices -->
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
	    <div class="navbar-nav">
	      <a class="nav-item nav-link" href="/slimYB/admin">Home <span class="sr-only">(current)</span></a>
	      <a class="nav-item nav-link" href="/slimYB/userprofile">User Profile</a>
	      <a class="nav-item nav-link" href="/slimYB/forum">Forum</a>
	      <a class="nav-item nav-link" href="/slimYB/login">Log in</a>
	      <a class="nav-item nav-link" href="/slimYB/logout">Log out</a>
	     
	    </div>
	  </div>
	  <a href="#" class="btn btn-outline-light my-2 my-sm-0" role="button">Log in</a>
	</nav>
	</header>
	<div class="container mt-3">