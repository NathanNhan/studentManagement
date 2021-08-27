<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student management System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Student Management</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-link active" aria-current="page" href="index.jsp">Home</a> <a
						class="nav-link" href="AddStudent.jsp">New Student</a> <a class="nav-link"
						href="ListController">All Students</a> 
				</div>
			</div>
		</div>
	</nav>
	<div class="container">
		   <div class="banner-image"><img src="https://www.leadsquared.com/wp-content/uploads/2019/02/banner-2.jpg"/></div>
	</div>
	<div class="row service">
	    <div class="col-md-3">
	    	<p>Manage student detail</p>
	    </div>
	    <div class="col-md-3">
	    	<p>View all Records</p>
	    </div>
	    <div class="col-md-3">
	    	<p>Easy to update and search</p>
	    </div>
	    <div class="col-md-3">
	    	<p>One stop solution</p>
	    </div>
	</div>
	<footer>
		<div class="row">
		   <div class="col-md-6">
		   <p><a href="#">Home</a></p>
		   <p><a href="#">Home</a></p>
		   <p><a href="#">Home</a></p>
		   <p><a href="#">Home</a></p>
		   </div>
		   <div class="col-md-6">
		   	<p>Contact us:</p>
		   	<p>Phone: xxxxx</p>
		   	<p>Email: xxxx </p>
		   </div>
		</div>
	</footer>
</body>
<style>
body{
  background:white;
  
}
.container .banner-image img{
width:100%;}
.service {
  background:white;
}
footer .row {
  text-align:center;
  color:white;
  background:orange;
}
a {
color:white;
text-decoration:none;
}

</style>
</html>