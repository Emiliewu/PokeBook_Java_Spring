<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8" />
<title>Expense Detail</title>
</head>
<body>
	<div class="container mx-auto" style="width:800px;">
	<div class="container-sm my-3 p-3 col-8">
		<div class="d-flex justify-content-between" style="color:#195f9b">
		<h5 class="p-3">Expense Details</h5>
		<a href="/expenses">Go Back</a>
		</div>
		<div class="container-sm my-3 p-3 col-8">
		  <div class="row">
		    <div class="col">
		      <p>Expense Name: </p>
		    </div>
		    <div class="col">
		      <p><c:out value="${ pokebook.expense }"/> </p>
		    </div>
		  </div>
		  <div class="row">
		    <div class="col">
		      <p>Vender: </p>
		    </div>
		    <div class="col">
		      <p><c:out value="${ pokebook.vender }"/> </p>
		    </div>
		  </div>
		  <div class="row">
		    <div class="col">
		      <p>Amount Spent: </p>
		    </div>
		    <div class="col">
		      <p>$<c:out value="${ pokebook.price }"/> </p>
		    </div>
		  </div>
		  <div class="row">
		    <div class="col">
		      <p>Description: </p>
		    </div>
		    <div class="col">
		      <p><c:out value="${ pokebook.description }"/> </p>
		    </div>
		  </div>
		  </div>
		</div>	
	</div>
</body>
</html>