<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>the car store</title>
<meta charset="utf-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}
</style>
<style type="text/css">
.btn-toolbar {
	margin: 20px;
}
</style>

<script>
	function formSubmit() {
		document.getElementById("logout").submit();
	}
</script>
</head>
<body>
	<div class="top-bar ">
		<div class="container">
			<div class="nav-collapse collapse-nav responsive-collapse">
				<div class="row">

					<div class="col-sm-6 col-xs-8">


						<div class="navbar-right">
							<ul class="nav navbar-nav navbar-right">
								<c:if test="${pageContext.request.userPrincipal.name != null}">
									<li>Welcome :${pageContext.request.userPrincipal.name}</li>
									<security:authentication var="user"
										property="principal.authorities" />
									<security:authorize var="loggedIn" access="isAuthenticated()">
										<security:authorize access="hasRole('ROLE_ADMIN')">
											<li>Admin</li>
										</security:authorize>
										<security:authorize access="hasRole('ROLE_USER')">
											<li>__CUSTOMER</li>
										</security:authorize>
									</security:authorize>

								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/.container-->
	</div>
	<!--/.top-bar-->

	<nav class="navbar navbar-inverse">

		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar" >
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">THE CARS STORE</a>
			</div>

<c:url value="/perform_logout" var="logout" />
				<form action="${logout}" method="post" id="logout">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>
				
			<div class="collapse navbar-collapse" id="myNavbar">
				<!--Default buttons with dropdown menu-->
			
			
							 <div class="dropdown">
						 <button class="dropdown-toggle" type="button" data-toggle="dropdown">HOME
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
   <li><a href="<c:url value="/product/productList/all" />">Products</a></li>
   
    </ul>
    
    </div>
			

							 <div class="dropdown">
						 <button class="dropdown-toggle" type="button" data-toggle="dropdown">ABOUT
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
   <li><a href="#">Contact_US</a></li>
   
    </ul></div>
    
				<ul class="nav navbar-nav navbar-right">

					<c:if test="${pageContext.request.userPrincipal.name == null}">
						<li><a href="signUp"><span
								class="glyphicon glyphicon-user"></span> register</a></li>
						<li><a href="login"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
								
					</c:if>
							<c:if test="${pageContext.request.userPrincipal.name != null}">
					 <li><a href="javascript:formSubmit()">Logout</a></li>
					 </c:if>
				</ul>
			</div>
		</div>
		<!--<form action="" class="navbar-form navbar-right">
			<form role="search" style="width: 15em; margin: 0.3em 2em;">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search">
					<div class="input-group-btn">
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-search"></span>
						</button>

					</div>
				</div>
			</form>
		</form>-->
		</nav>

</body>
</html>