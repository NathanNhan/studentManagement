<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<form class="row g-3 mt-5" action="EditStudent" method="post">
  <div class="col-md-6">
    <label for="rollnumber" class="form-label">Roll number</label>
    <input type="text" class="form-control" id="rollnumber" name="rollnumber" value="${student.rollno }"/>
  </div>
  <div class="col-md-6">
    <label for="rollnumber" class="form-label">ID</label>
    <input type="number" class="form-control" id="id" name="id" value="${student.id }"/>
  </div>
  <div class="col-md-6">
    <label for="sname" class="form-label">Student Name</label>
    <input type="text" class="form-control" id="sname" name="sname" value="${student.name }">
  </div>
  <div class="col-12">
    <label for="inputEmail" class="form-label">Student Email</label>
    <input type="email" class="form-control" id="semail" name="semail" value="${student.email }">
  </div>
  <div class="col-12">
    <label for="inputPhone" class="form-label">Student phone</label>
    <input type="number" class="form-control" id="sphone" name="sphone" value="${student.phone }">
  </div>
  
  <div class="col-md-4">
    <label for="branch" class="form-label">Select Branch</label>
    <select id="branch" class="form-select" name="branch" value="${student.branch }">
      <option selected value="CSE">CSE</option>
      <option value="ISE">ISE</option>
      <option value="MEC">MEC</option>
      <option value="ECE">ECE</option>
      <option value="EEE">EEE</option>
    </select>
  </div>
  <div class="col-md-4">
    <label for="sem" class="form-label">Select Sem</label>
    <select id="sem" class="form-select" name="sem" value="${student.sem }">
      <option value="1" selected>1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
    </select>
  </div>
  <div class="col-md-6">
    <label for="inputGrade" class="form-label">Grade</label>
    <input type="text" class="form-control" id="sgrade" name="sgrade" placeholder="CGBA" value="${student.grade }">
  </div>
  <div class="col-12">
    <center><button type="submit" class="btn btn-outline-success">Update</button></center>
  </div>
</form>
</body>
</html>