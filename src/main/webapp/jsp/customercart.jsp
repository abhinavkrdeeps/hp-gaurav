<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="payment">
<th>Description :</th>
<th>Name :</th>
<th>Price :</th>
<th>Buy Now</th>


<c:forEach items="${lists}" var="prod">
<td>${prod.getDescription()}</td>
<td>${prod.getProductName()}</td>
<td>${prod.getProductCost()}</td>

</c:forEach>
<input type="submit" value="Proceed To Pay">
</form>
</body>
</html>