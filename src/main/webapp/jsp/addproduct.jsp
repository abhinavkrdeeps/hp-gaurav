<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<title>HappinessBasket</title>
</head>
<style>
body {
	height: 90vh;
	margin-top: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	margin-right: 0px;
}

h2, h4 {
	display: flex;
	flex-direction: column-reverse;
}

.header {
	top: 0;
	font-style: italic;
	text-align: center;
	text-shadow: black;
	height: 25%;
	width: 100%;
	background-color: #c6ccb3; 
}
.logo{
 width: 100%;
  height: auto;
}

.main {
	left: 0;
	right: 0;
	height: 89.5%;
	padding: 0; width : 100%;
	background-color: #b3b3cc;
	width: 100%;
}

.footer {
	left: 0;
	bottom: 0;
	width: 100%;
	height: 7%;
	background-color: black;
	color: white;
	text-align: center;
	text-shadow: black;
}

.col-sm-4 {
	margin-left: 150px;
	margin-top: 70px;
} 
</style>
<body style="margin-top:-21px;">
	<div class="header">
	<img src="images/logo.png">
		<h2>HAPPINESS BASKET ADMIN DASHBOARD</h2>
	</div>

	<div class="main">
		<div class="row">
			<div class="col-sm-4">
				<form action="addproduct" method="post">
<table>
<tr></><td></>Category</td><td> <select name="category">
<option>Select Category of product</option>
<c:forEach items="${categories}" var="category">
<option value="${category.getCategoryid()}">${category.getCategoryName()}</option>

</c:forEach>

</select></td></tr>

<tr><td>Name</td><td> <input type="text" name="productName"></td></br>

<tr><td>Description</td><td> <input type="text" name="productDescription"></td></tr></br>

<tr><td>Price</td> <td><input type="text" name="price"></td></tr></br>

<tr><td>Quantity</td><td> <input type="number" name="quantity"></td></tr></br></br>

<tr><td>Add Image</td><td><input name="file" id="fileToUpload" type="file" class="file"></td></tr>

<tr><td><input type="submit" value="ADD"></td></tr>
</table>
</form>
		</div>
	</div>
</div>
	<div class="footer">
		HappinessBasket<i class="fa fa-copyright"></i> +01-0878873-56-56
		happinessbasket@hotmail.com Happiness Basket Private Limited
	</div>
</body>
</html>