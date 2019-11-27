<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


Your Order has been Placed Successfully !<br>
<br>
Your Order Id is:<p id="demo"></p>
<a href="home">Go Back To Home page</a>
<script>

  document.getElementById("demo").innerHTML = Math.floor((Math.random() * 9999999) + 1000000);

</script>

</body>
</html>