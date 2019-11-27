<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Happiness Basket</title>
</head>
<style>
.image{
height:50px;
width:60px;
}
</style>


<body>
	  
	<div align="center">
		<table border="1">
			<tr>
				<th>Product Id</th>
				<th>Product Name</th>
				<th>Price</th>
				<th>Price Description</th>
				<th>Images</th>
			</tr>
			<c:forEach items="${lists}" var="list">
				<tr>
					<td>${list.getProductId()}</td>
					<td>${list.getProductName()}</td>
					<td>${list.getProductCost(}</td>
					<td>${list.getDescription()}</td>
					<td><img class="image" src="${list.getImage()"}></td>
					<%-- <td><a href="editAdmin?id=${list.aid}">Edit</a> <a
						href="deleteAdmin?id=${list.aid}">Delete</a></td> --%>
				</tr>
			</c:forEach>
		</table>
		</div>
</body>
</html>