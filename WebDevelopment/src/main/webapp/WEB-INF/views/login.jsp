<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>${title}</title>
<link style="width:30px;height:30px" rel="icon" href="${images}/84.jpg">
<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>
<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<link href="//cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css"
	rel="stylesheet">

<!-- Add custom CSS here -->
<link href="${css}/shop-homepage.css" rel="stylesheet">


<!-- Site Icons -->
<link rel="shortcut icon" href="${images}/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon" href="${images}/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="${css}/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="${css}/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="${css}/owl.carousel.min.css">
</head>
<body>

	<%--  <div class="wrapper">
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a href="${contextRoot}/home"><img src="${images}/logo.png" /></a>

				</div>
			</div>
		</nav>

		<div class="container">

			<c:if test="${not empty message}">
				<div class="row">
					<div class="col-xs-12 col-md-offset-2 col-md-8">
						<div class="alert alert-danger fade in">${message}</div>
					</div>
				</div>
			</c:if>

			<c:if test="${not empty logout}">
				<div class="row">
					<div class="col-xs-12 col-md-offset-2 col-md-8">
						<div class="alert alert-danger fade in">${logout}</div>
					</div>
				</div>
			</c:if>

			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 style="color: white">
							<center>
								<strong>Login</strong>
							</center>
						</h3>
					</div>
					<div class="panel-body">
						<form action="${contextRoot}/login" method="POST"
							class="form-horizontal" id="loginExec">

							<div class="form-group">
								<label for="username" class="col-md-4 control-label">Email</label>
								<div class="col-md-8">
									<input type="text" name="username" id="username"
										class="form-control">
								</div>
							</div>

							<div class="form-group">
								<label for="password" class="col-md-4 control-label">Password</label>
								<div class="col-md-8">
									<input type="password" name="password" id="password"
										class="form-control">
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-offset-4">
									<input type="submit" value="Login Here" class="btn btn-primary">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}">
								</div>
							</div>

						</form>

						<div class="panel-footer">
							<div class="text-center">
								New User--> <a style="color: blue"
									href="${contextRoot}/membership">Sign up</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>  --%>
  <style>
		 .section{
			width:360px;
			height:400px;
			background:white;
			border-radius:15px;
			margin-left:200px;
			margin-top:100px;
			padding-left:30px;
			padding-top:30px;
			box-shadow:4px 4px rgba(0,0,0, 0.2);
			float: left;
		} 
		
		label{
		font-size:20px;
		font-family:Calibri (Body);
		color:black;
		}
		a{
			text-decoration:none;
		}
		a:hover{
			text-decoration:underline;
		}
		input[type="submit"] {		/* it applies for submit only */
			width:310px; 
			height:40px; 
			font-size:22px;
			background:#007DC0;
			color:white;
			border:0;
			border-radius:20px;
		}
		
	</style>
 </head>
 <body style="background:#cccccc; font-size:20px;">		
 <div class="container">
	<div class="row">	
	<c:if test="${not empty message}">
				<div class="row">
					<div class="text-center">
						<div class="alert alert-danger fade in">${message}</div>
					</div>
				</div>
			</c:if>

			<c:if test="${not empty logout}">
				<div class="row">
					<div class="text-center">
						<div class="alert alert-danger fade in">${logout}</div>
					</div>
				</div>
			</c:if>
	<div class="section" style="margin-left:30px;width:500px;height:200px">
	<img src="${images}/logo.png"> <br><br>
		<h2>Shopper helps you to explore the world!!</h2>
	</div>
	
			<div class="content">
	<div class="section">
			
		<form action="${contextRoot}/login" method="POST"
							class="form-horizontal" id="loginExec" autocomplete="off">
	 
				<label for="username" class="col-md-4 control-label">UserName:  </label> <br>
				<input style="width:250px" type="text" name="username" id="username"
										class="form-control" placeholder="EmailId or Phone Num" required>
				 <br>
 
				<label for="password" class="col-md-4 control-label">Password: </label> <br>
				<input style="width:250px" type="password" name="password" id="password"
										class="form-control" placeholder="Password" required> 
				<br>

				<input type="submit" value="Login Here" class="btn btn-primary"> <input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}">

				<hr style="width:80%;">New User-->
												
				<a href="${contextRoot}/membership" style="display:block; color:blue; width:200px; height:30px; text-align:center;">Create New Account</a> <br> <br>
		
		</form>
		</div>
		</div>
	</div>
</div>


		<!-- common footer url -->
		<!-- JavaScript -->
		<script src="${js}/jquery-1.10.2.js"></script>
		<script src="${js}/bootstrap.js"></script>
		<%-- <script src="${js}/jquery.dataTables.js"></script>
	<script src="${js}/jquery.dataTables.bootstrap.js"></script> --%>
		<script src="//cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
		<script src="${js}/bootbox.min.js"></script>
		<script src="${js}/myown.js"></script>
</body>

</html>
