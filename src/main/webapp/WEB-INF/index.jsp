<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="UTF-8" />
<title>Poke Book</title>
</head>
<body>
	<div class="container mx-auto" style="width:800px; ">
		<div class="container-sm my-3 p-3 col-8" style="color:#195f9b">
			<h3>PokeBook</h3>
		</div>
		<div class="container-sm my-3 p-3 col-8" style="border:1px solid black">
			<table class="table table-striped table-hover">
			<thead>
		    <tr>
		      <th scope="col">Expense</th>
		      <th scope="col">Vender</th>
		      <th scope="col">Amount</th>
		      <th scope="col">Action</th>
		    </tr>
			</thead>
			<tbody>
			<c:forEach var="p" items="${ pokebooks }">
				<tr>
					<td scope="row"><a href="/expenses/${ p.id }"><c:out value="${ p.expense }"/></a></td>
					<td scope="row"><c:out value="${ p.vender }"/></td>
					<td scope="row">$<c:out value="${ p.price }"/></td>
					<td scope="row"><a href="/expenses/edit/${ p.id }" >Edit</a> || <a href="/expenses/delete/${ p.id }" >Delete</a></td>
				</tr>
			</c:forEach>
  			</tbody>
			</table>
		</div>
		<div>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
		<div class="container-sm my-3 p-3 col-8" style="color:#195f9b">
		<h3>Track an Expense</h3>
		<form:form action="/expenses/new" method="post" modelAttribute="pokebook">
		    <div class="mb-3 row">
		        <form:label path="expense" class="col-sm-2 col-form-label">Expense</form:label>
		        <div class="col-sm-10">
		        <form:errors path="expense" style="color:red;"/>
		        <form:input path="expense" class="form-control"/>
		        </div>
		    </div>
		    <div class="mb-3 row">
		        <form:label path="vender" class="col-sm-2 col-form-label">Vender</form:label>
		        <div class="col-sm-10">
		        <form:errors path="vender" style="color:red;"/>
		        <form:input path="vender" class="form-control"/>
		        </div>
		    </div>
		    <div class="mb-3 row">
		        <form:label path="price" class="col-sm-3 col-form-label">Amount: $</form:label>
		        <div class="col-sm-9">
		        <form:errors path="price" style="color:red;"/>
		        <form:input path="price" class="form-control"/>
		        </div>
		    </div>
		    <div class="mb-3 row">
		        <form:label path="description" class="col-sm-2 col-form-label">Description</form:label>
		        <div class="col-sm-10">
		        <form:errors path="description" style="color:red;"/>     
		        <form:input type="text" path="description" class="form-control"/>
		        </div>
		    </div>    
		    <div class="row my-2">
	         	<div class="container">
	       	      <button class="btn btn-primary" type="submit">Submit</button>
	         	</div>
	         </div>
		</form:form>  
		</div>
		</div>
	
	</div>
</body>
</html>