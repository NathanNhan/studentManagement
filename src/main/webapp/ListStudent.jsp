<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	<% HttpSession s = request.getSession();
	    String status = (String)s.getAttribute("status");
	    if(status != null) {
	%>
<div class="alert alert-primary alert-dismissible fade show text-center" role="alert">
  <strong><%= status %></strong>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
	<% } %>
	<form class="row g-3 mt-3" action="ListController" method="post">
		<div class="col-auto">
			<label for="inputPassword2" class="visually-hidden">SEarch</label>
			<input type="text" class="form-control" id="search" name="search"
				placeholder="Student name">
		</div>
		<div class="col-auto">
			<button type="submit" class="btn btn-primary mb-3">Search</button>
		</div>
	</form>
	<table class="table table-dark table-striped">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Roll number</th>
      <th scope="col">Email</th>
      <th scope="col">Branch</th>
      <th scope="col">Sem</th>
      <th scope="col">Grade</th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="items" items="${data}">
    <tr>
    
      <th>${items.id }</th>
      <td>${items.name }</td>
      <td>${items.rollno }</td>
      <td>${items.email }</td>
      <td>${items.branch }</td>
      <td>${items.sem }</td>
      <td>${items.grade }</td>
      <td><a class="btn btn-info" href="EditStudent?id=${items.id }">Edit</a></td>
      <td><a class="btn btn-danger" href="DeleteStudent?id=${items.id }">Delete</a></td>
     
    </tr>
    </c:forEach>
  </tbody>
</table>
</body>
</html>