<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <title>CUSTOMER RELATIONSHIP MANAGEMENT</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container p-3 my-3 bg-dark text-white">
  <h1 style="text-align:center">CUSTOMER RELATIONSHIP MANAGEMENT</h1>
	<p>
	<a href="list" class="btn btn-outline-warning">Customer List</a>
	<a href="showForm" class="btn btn-outline-warning">Add Customer</a>
	</p>
	
	 <hr style="background-color: rgb(0,255,255); height: 1px;">
	
 	  <div class="container">
   <h4 style="text-align:center;">Customer Registration Form</h4>
   <form action="save" method="post">
    <div class="form-group">
      <input type="hidden" class="form-control" placeholder="Enter Id" name="id" value="${customer.id}">
    </div>
   <div class="form-group">
      <input type="text" class="form-control" placeholder="Enter First Name" name="firstName" value="${customer.firstName}">
    </div>
    <div class="form-group">
      <input type="text" class="form-control" placeholder="Enter Last Name" name="lastName" value="${customer.lastName}">
    </div>
     <div class="form-group">
      <input type="text" class="form-control" placeholder="Enter Email Address" name="email" value="${customer.email}">
    </div>
    <button class="btn btn-outline-warning btn-lg type=" Submit" class="btn btn-primary">Save</button>
  </form>
  </div> 
</div>


</body>
</html>