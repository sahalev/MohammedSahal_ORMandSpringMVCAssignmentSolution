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
  <table class="table table-dark">
    <thead>
      <tr>
      	<th>S. No</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Action</th>
      </tr>
    </thead>
 	<c:forEach var="customer" items="${customers}" varStatus="c">
 	<tbody>
 	<tr>
 	<td>${c.count}</td>
 	<td>${customer.firstName}</td>
 	<td>${customer.lastName}</td>
 	<td>${customer.email}</td>
 	<td><a  class="btn btn-success" href="edit?id=${customer.id}">Update</a> 
 	<a  class="btn btn-danger" href="delete?id=${customer.id}"  	onclick="return confirm('Are you sure you want to delete this Customer?');">Delete</a>
 	 </td>
 	</tr>
 	</tbody>
 	</c:forEach>
  </table>
  </div> 
</div>


</body>
</html>